/*
 * This file is part of the Nextbeat services.
 *
 * For the full copyright and license information,
 * please view the LICENSE file that was distributed with this source code.
 */

package persistence.idol_products.dao

import java.time.LocalDateTime

import persistence.idol_products.model.IdolProducts
import persistence.idol.model.Idol
import persistence.product.model.Product
import persistence.geo.model.Location
import play.api.db.slick.{DatabaseConfigProvider, HasDatabaseConfigProvider}
import slick.jdbc.JdbcProfile

import scala.concurrent.Future

// DAO: アイドル-商品間の操作
//~~~~~~~~~~~~~~~~~~
class IdolProductsDAO @javax.inject.Inject()(
                                              val dbConfigProvider: DatabaseConfigProvider
                                            ) extends HasDatabaseConfigProvider[JdbcProfile] {
  import profile.api._

  // --[ リソース定義 ] --------------------------------------------------------
  lazy val slick = TableQuery[IdolProductsTable]
  lazy val slick_p = TableQuery[ProductTable]

  // --[ データ処理定義 ] ------------------------------------------------------
  /**
    * idolのidを引数に
    * それにひもづく全てのproductを返す
    */

  def getProductsByIdolid(idolId: Idol.Id) =
    db.run{
      slick_p
        .filter(_.id.in
          (slick
              .filter(_.idol_id === idolId)
            .map(p => p.product_id)
          )
        )
        .result
    }



  // --[ テーブル定義 ] --------------------------------------------------------
  class IdolProductsTable(tag: Tag) extends Table[IdolProducts](tag, "idol_products") {


    // Table's columns
    /* @1 */ def id         = column[IdolProducts.Id]   ("id", O.PrimaryKey, O.AutoInc)
    /* @2 */ def product_id = column[Product.Id]("product_id")
    /* @3 */ def idol_id    = column[Idol.Id]("idol_id")
    /* @4 */ def location_id    = column[Location.Id]("location_id")
    /* @5 */ def updatedAt = column[LocalDateTime]("updated_at")
    /* @6 */ def createdAt = column[LocalDateTime]("created_at")


    // The * projection of the table
    def * = (
      id.?, product_id, idol_id, location_id,
      updatedAt, createdAt
    ) <> (
      /** The bidirectional mappings : Tuple(table) => Model */
      (IdolProducts.apply _).tupled,
      /** The bidirectional mappings : Model => Tuple(table) */
      (v: TableElementType) => IdolProducts.unapply(v).map(_.copy(
        _5 = LocalDateTime.now
      ))
    )
  }

  class ProductTable(tag: Tag) extends Table[Product](tag, "product") {


    // Table's columns
    /* @1 */ def id    = column[Product.Id]   ("id", O.PrimaryKey, O.AutoInc)
    /* @2 */ def name     = column[String]       ("name")
    /* @3 */ def price      = column[Int]         ("price")
    /* @4 */ def stock      = column[Int]         ("stock")
    /* @5 */ def detail   = column[String]       ("detail")
    /* @6 */ def updatedAt = column[LocalDateTime]("updated_at")
    /* @7 */ def createdAt = column[LocalDateTime]("created_at")


    // The * projection of the table
    def * = (
      id.?, name, price, stock, detail,
      updatedAt, createdAt
    ) <> (
      /** The bidirectional mappings : Tuple(table) => Model */
      (Product.apply _).tupled,
      /** The bidirectional mappings : Model => Tuple(table) */
      (v: TableElementType) => Product.unapply(v).map(_.copy(
        _6 = LocalDateTime.now
      ))
    )
  }
}
