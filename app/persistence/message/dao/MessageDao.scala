package persistence.message.dao

import java.time.LocalDateTime
import scala.concurrent.Future

import slick.jdbc.JdbcProfile
import play.api.db.slick.DatabaseConfigProvider
import play.api.db.slick.HasDatabaseConfigProvider
import persistence.geo.model.Location

import persistence.idol.model.Idol
import persistence.message.model.Message

// DAO: メッセージ情報
//~~~~~~~~~~~~~~~~~~
case class MessageDao @javax.inject.Inject()(
  val dbConfigProvider: DatabaseConfigProvider
) extends HasDatabaseConfigProvider[JdbcProfile] {
  import profile.api._

  // --[ リソース定義 ] --------------------------------------------------------
  lazy val completeSlick   = TableQuery[CompleteMessageTable]
  lazy val recommenedSlick = TableQuery[RecommenedMessageTable]

  // --[ データ処理定義 ] ------------------------------------------------------
  /**
   * メッセージ情報を１件取得
   */
  def getComplete(id: Idol.Id): Future[Option[Message]] =
    db.run{
      completeSlick
        .filter(_.idolId === id)
        .result.headOption
    }

  def getRecommened(id: Idol.Id): Future[Option[Message]] =
    db.run{
      recommenedSlick
        .filter(_.idolId === id)
        .result.headOption
    }


  // --[ テーブル定義 ] --------------------------------------------------------
  // 商品購入後メッセージ
  class CompleteMessageTable(tag: Tag) extends Table[Message](tag, "message_bought"){
    // Table's columns
    /* @1 */ def id        = column[Message.Id]    ("id", O.PrimaryKey, O.AutoInc) // メッセージID
    /* @2 */ def idolId    = column[Idol.Id]       ("idol_id")                     // 発言するアイドルのID
    /* @3 */ def message   = column[String]        ("message")                     // 発言内容
    /* @4 */ def updatedAt = column[LocalDateTime] ("updated_at")                  // データ更新日
    /* @5 */ def createdAt = column[LocalDateTime] ("created_at")                  // データ作成日

    // The * projection of the table
    def * = (
      id.?, idolId, message, updatedAt, createdAt
    ) <> (
      /** The bidirectional mappings : Tuple(table) => Model */
      (Message.apply _).tupled,
      /** The bidirectional mappings : Model => Tuple(table) */
      (v: TableElementType) => Message.unapply(v).map(_.copy(
        _4 = LocalDateTime.now
      ))
    )
  }

  // 商品おすすめメッセージ
  class RecommenedMessageTable(tag: Tag) extends Table[Message](tag, "message_detail"){
    // Table's columns
    /* @1 */ def id        = column[Message.Id]    ("id", O.PrimaryKey, O.AutoInc) // メッセージID
    /* @2 */ def idolId    = column[Idol.Id]       ("idol_id")                     // 発言するアイドルのID
    /* @3 */ def message   = column[String]        ("message")                     // 発言内容
    /* @4 */ def updatedAt = column[LocalDateTime] ("updated_at")                  // データ更新日
    /* @5 */ def createdAt = column[LocalDateTime] ("created_at")                  // データ作成日

    // The * projection of the table
    def * = (
      id.?, idolId, message, updatedAt, createdAt
    ) <> (
      /** The bidirectional mappings : Tuple(table) => Model */
      (Message.apply _).tupled,
      /** The bidirectional mappings : Model => Tuple(table) */
      (v: TableElementType) => Message.unapply(v).map(_.copy(
        _4 = LocalDateTime.now
      ))
    )
  }
}
