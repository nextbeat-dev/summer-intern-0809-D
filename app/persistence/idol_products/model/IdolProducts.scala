/*
 * This file is part of the Nextbeat services.
 *
 * For the full copyright and license information,
 * please view the LICENSE file that was distributed with this source code.
 */

package persistence.idol_products.model

import java.time.LocalDateTime

import persistence.idol.model.Idol
import persistence.product.model.Product
import persistence.geo.model.Location

// アイドル-商品の紐付けを行う
//~~~~~~~~~~~~~
case class IdolProducts(
     id:          Option[IdolProducts.Id], // 商品ID
     product_id:  Product.Id,
     idle_id:     Idol.Id,
     location_id: Location.Id,
     updatedAt:   LocalDateTime = LocalDateTime.now, // データ更新日
     createdAt:   LocalDateTime = LocalDateTime.now // データ作成日
)


// コンパニオンオブジェクト
//~~~~~~~~~~~~~~~~~~~~~~~~~~
object IdolProducts {

  // --[ 管理ID ]---------------------------------------------------------------
  type Id = Long
}
