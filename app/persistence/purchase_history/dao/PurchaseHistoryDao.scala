package persistence.purchase_history.dao

import java.time.LocalDateTime

import persistence.purchase_history.model
import play.api.db.slick.{DatabaseConfigProvider, HasDatabaseConfigProvider}
import slick.jdbc.JdbcProfile

import scala.concurrent.Future
// import persistence.geo.model.Location

// DAO: アイドル情報
//~~~~~~~~~~~~~~~~
class PurchaseHistoryDao @javax.inject.Inject()(
  val dbConfigProvider: DatabaseConfigProvider
) extends HasDatabaseConfigProvider[JdbcProfile] {
  import profile.api._

  // --[ リソース定義 ] --------------------------------------------------------
  lazy val slick = TableQuery[IdolTable]

  // --[ データ処理定義 ] ------------------------------------------------------
  /**
   * アイドル情報を追加する
   */
  def add(data: model.PurchaseHistory): Future[model.PurchaseHistory.Id] =
    db.run{
      data.id match {
        case None => slick returning slick.map(_.id) += data
        case Some(_) => DBIO.failed(
          new IllegalArgumentException("The given object is already assigned id.")
        )
      }
    }

  /**
   * アイドル情報を１件取得
   */
  def get(id: model.PurchaseHistory.Id): Future[Option[model.PurchaseHistory]]=
    db.run{
      slick
        .filter(_.id === id)
        .result.headOption
    }

  /**
   * アイドル情報を全件取得
   */
  def findAll: Future[Seq[model.PurchaseHistory]] =
    db.run{
      slick.result
    }

  // --[ テーブル定義 ] --------------------------------------------------------
  class IdolTable(tag: Tag) extends Table[model.PurchaseHistory](tag, "idol") {

    // Table's columns
    /* @1 */ def id        = column[model.PurchaseHistory.Id]       ("id", O.PrimaryKey, O.AutoInc)  // ユーザID
    /* @2 */ def name      = column[String]        ("name")              // アイドルの名前
    /* @3 */ def profile   = column[String]        ("profile")           // アイドルの情報
    /* @4 */ def twitterId = column[String]        ("twitter_id")        // アイドルのTwitterのID
    /* @5 */ def updatedAt = column[LocalDateTime] ("updated_at")        // データ更新日
    /* @6 */ def createdAt = column[LocalDateTime] ("created_at")        // データ作成日

    // The * projection of the table
    def * = (
      id.?, name, profile, twitterId, updatedAt, createdAt
    ) <> (
      /** The bidirectional mappings : Tuple(table) => Model */
      (model.PurchaseHistory.apply _).tupled,
      /** The bidirectional mappings : Model => Tuple(table) */
      (v: TableElementType) => model.PurchaseHistory.unapply(v).map(_.copy(
        _5 = LocalDateTime.now
      ))
    )
  }
}
