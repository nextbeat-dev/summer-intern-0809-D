package persistence.Purchase.dao

import java.time.LocalDateTime

import persistence.product.model
import persistence.purchase.model.Purchase
import persistence.udb.model.User
import persistence.product.model.Product
import play.api.db.slick.{DatabaseConfigProvider, HasDatabaseConfigProvider}
import slick.jdbc.JdbcProfile

import scala.concurrent.Future

// DAO: 購入履歴情報
//~~~~~~~~~~~~~~~~
class PurchaseDao @javax.inject.Inject()(
  val dbConfigProvider: DatabaseConfigProvider
) extends HasDatabaseConfigProvider[JdbcProfile] {
  import profile.api._

  // --[ リソース定義 ] --------------------------------------------------------
  lazy val slick = TableQuery[PurchaseTable]

  // --[ データ処理定義 ] ------------------------------------------------------
  /**
   * アイドル情報を追加する
   */
  def add(data: Purchase): Future[Purchase.Id] =
    db.run{
      data.id match {
        case None => slick returning slick.map(_.id) += data
        case Some(_) => DBIO.failed(
          new IllegalArgumentException("The given object is already assigned id.")
        )
      }
    }


  // --[ テーブル定義 ] --------------------------------------------------------
  class PurchaseTable(tag: Tag) extends Table[Purchase](tag, "purchase") {

    // Table's columns
    /* @1 */ def id= column[Purchase.Id] ("id", O.PrimaryKey, O.AutoInc) // 購入履歴id
    /* @2 */ def user_id= column[User.Id] ("user_id") // 購入したファンのid
    /* @3 */ def product_id = column[Product.Id] ("product_id") // 購入された商品のid
    /* @4 */ def purchase_num = column[Int] ("purchase_num") // 購入された数
    /* @5 */ def updatedAt = column[LocalDateTime] ("updated_at") // データ更新日
    /* @6 */ def createdAt = column[LocalDateTime] ("created_at") // データ作成日

    // The * projection of the table
    def * = (
      id.?, user_id, product_id, purchase_num,
      updatedAt, createdAt
    ) <> (
      /** The bidirectional mappings : Tuple(table) => Model */
      (Purchase.apply _).tupled,
      /** The bidirectional mappings : Model => Tuple(table) */
      (v: TableElementType) => Purchase.unapply(v).map(_.copy(
        _5 = LocalDateTime.now
      ))
    )
  }
}
