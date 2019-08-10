package persistence.idol.dao

// import java.time.LocalDateTime
import scala.concurrent.Future

import slick.jdbc.JdbcProfile
import play.api.db.slick.DatabaseConfigProvider
import play.api.db.slick.HasDatabaseConfigProvider

import persistence.idol.model.Idol
// import persistence.geo.model.Location

// DAO: アイドル情報
//~~~~~~~~~~~~~~~~
class IdolDao @javax.inject.Inject()(
  val dbConfigProvider: DatabaseConfigProvider
) extends HasDatabaseConfigProvider[JdbcProfile] {
  import profile.api._

  // --[ リソース定義 ] --------------------------------------------------------
  lazy val slick = TableQuery[IdolTable]

  // --[ データ処理定義 ] ------------------------------------------------------
  /**
   * アイドル情報を追加する
   */
  def add(data: Idol): Future[Idol.id] =
    db.run{
      data.id match {
        case None => slick returning slick.map(_.id) += data
        case Some(_) => DBIO.failed(
          new IllegalArgumentException("The given object is already assigned id.")
        )
      }
    }

  // --[ テーブル定義 ] --------------------------------------------------------
  class IdolTable(tag: Tag) extends Table[Idol](tag, "idol_table") {

    // Table's columns
    /* @1 */ def id        = column[Idol.Id]
    /* @2 */ def name      = column[String]
    /* @3 */ def profile   = column[String]
    /* @4 */ def twitterId = column[String]
    /* @5 */ def updatedAt = column[LocalDateTime]
    /* @6 */ def createdAt = column[LocalDateTime]

    // The * projection of the table
    def * = (
      id.?, name, profile, twitterId, updatedAt, createdAt
    ) <> (
      /** The bidirectional mappings : Tuple(table) => Model */
      (User.apply _).tupled,
      /** The bidirectional mappings : Model => Tuple(table) */
      (v: TableElementType) => User.unapply(v).map(_.copy(
        _5 = LocalDateTime.now
      ))
    )
  }
  
