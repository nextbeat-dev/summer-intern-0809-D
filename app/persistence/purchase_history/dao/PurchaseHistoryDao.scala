package persistence.purchase_history.dao

import java.time.LocalDateTime

import persistence.idol
import persistence.product.model
import persistence.purchase_history.model.PurchaseHistory
import persistence.udb.model.User
import persistence.product.model.Product
import persistence.idol.model.Idol
import play.api.db.slick.{DatabaseConfigProvider, HasDatabaseConfigProvider}
import slick.jdbc.JdbcProfile

import scala.concurrent.Future

// DAO: 購入履歴情報
//~~~~~~~~~~~~~~~~
class PurchaseHistoryDao @javax.inject.Inject()(
  val dbConfigProvider: DatabaseConfigProvider
) extends HasDatabaseConfigProvider[JdbcProfile] {
  import profile.api._

  // --[ リソース定義 ] --------------------------------------------------------
  lazy val slick = TableQuery[PurchaseHistoryTable]

  // --[ データ処理定義 ] ------------------------------------------------------
  /**
   * アイドル情報を追加する
   */
  def add(data: PurchaseHistory) =
    db.run{
//      data.id match {
//        case None => slick returning slick.map(_.id) += data
//        case Some(_) => DBIO.failed(
//          new IllegalArgumentException("The given object is already assigned id.")
//        )
//      }
      slick returning slick.map(_.id) += data
    }

  def getPurchaseCountList =
    db.run{
      slick
        .groupBy(_.idol_id).map{
        case (s, results) => (s -> results.length)
      }.result
    }




  // --[ テーブル定義 ] --------------------------------------------------------
  class PurchaseHistoryTable(tag: Tag) extends Table[PurchaseHistory](tag, "purchase_history") {

    // Table's columns
    /* @1 */ def id= column[PurchaseHistory.Id] ("id", O.PrimaryKey, O.AutoInc) // 購入履歴id
    /* @2 */ def user_id= column[User.Id] ("user_id") // 購入したファンのid
    /* @3 */ def product_id = column[Product.Id] ("product_id") // 購入された商品のid
    /* @4 */ def purchase_num = column[Int] ("purchase_num") // 購入された数
    /* @5 */ def idol_id = column[Idol.Id] ("idol_id") // 購入された商品のid
    /* @6 */ def updatedAt = column[LocalDateTime] ("updated_at") // データ更新日
    /* @7 */ def createdAt = column[LocalDateTime] ("created_at") // データ作成日

    // The * projection of the table
    def * = (
      id.?, user_id, product_id, purchase_num, idol_id,
      updatedAt, createdAt
    ) <> (
      /** The bidirectional mappings : Tuple(table) => Model */
      (PurchaseHistory.apply _).tupled,
      /** The bidirectional mappings : Model => Tuple(table) */
      (v: TableElementType) => PurchaseHistory.unapply(v).map(_.copy(
        _6 = LocalDateTime.now
      ))
    )
  }
}
