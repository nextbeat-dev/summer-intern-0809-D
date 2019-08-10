/*
 * This file is part of the Nextbeat services.
 *
 * For the full copyright and license information,
 * please view the LICENSE file that was distributed with this source code.
 */

package persistence.product.model


import java.time.LocalDateTime

// 施設情報 (sample)
//~~~~~~~~~~~~~
case class Product(
  id:          Option[Product.Id],                // 商品ID
  name:        String,                            // 商品名
  price:       Int,                               // 商品の値段
  stock:       Int,                               // 商品の在庫
  detail:      String,                            // 商品の説明
)

// フォーム
case class

// コンパニオンオブジェクト
//~~~~~~~~~~~~~~~~~~~~~~~~~~
object Product {

  // --[ 管理ID ]---------------------------------------------------------------
  type Id = Long
}

