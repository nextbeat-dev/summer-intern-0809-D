/*
 * This file is part of the Nextbeat services.
 *
 * For the full copyright and license information,
 * please view the LICENSE file that was distributed with this source code.
 */

package persistence.product.dao

import scala.concurrent.Future

import slick.jdbc.JdbcProfile
import play.api.db.slick.DatabaseConfigProvider
import play.api.db.slick.HasDatabaseConfigProvider
import persistence.product.model.Product

// DAO: 商品情報
//~~~~~~~~~~~~~~~~~~
class productDAO @javax.inject.Inject()(
  val dbConfigProvider: DatabaseConfigProvider
) extends HasDatabaseConfigProvider[JdbcProfile] {
  import profile.api._

  // --[ リソース定義 ] --------------------------------------------------------
  lazy val slick = TableQuery[ProductTable]

  // --[ データ処理定義 ] ------------------------------------------------------
  /**
   * idを検索条件にして、商品を1件だけ取得
   */
  def get(id: Product.Id): Future[Option[Product]] =
    db.run {
      slick
        .filter(_.id === id)
        .result.headOption
    }

  // --[ テーブル定義 ] --------------------------------------------------------
  class ProductTable(tag: Tag) extends Table[Product](tag, "product") {


    // Table's columns
    /* @1 */ def id    = column[Product.Id]   ("id", O.PrimaryKey, O.AutoInc)
    /* @2 */ def name     = column[String]       ("name")
    /* @3 */ def price      = column[Int]         ("price")
    /* @4 */ def stock      = column[Int]         ("stock")
    /* @5 */ def detail   = column[String]       ("detail")


    // The * projection of the table
    def * = (
      id.?, name, price, stock, detail
    ) <> (
      /** The bidirectional mappings : Tuple(table) => Model */
      (Product.apply _).tupled,
      /** The bidirectional mappings : Model => Tuple(table) */
      Product.unapply
    )
  }
}
