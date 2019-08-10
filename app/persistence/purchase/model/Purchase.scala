package persistence.purchase.model

import java.time.LocalDateTime

import play.api.data.Forms._
import play.api.data._

import persistence.udb.model.User
import persistence.product.model.Product

// 購入履歴情報
//~~~~~~~~~~~~~~
case class Purchase(
  id:           Option[Purchase.Id],
  user_id:      User.Id,                           // 購入したファンのid
  product_id:   Product.Id,                        // 購入された商品のid
  purchase_num: Int,                               // ファンが購入した数
  updatedAt:    LocalDateTime = LocalDateTime.now, // データ更新日
  createdAt:    LocalDateTime = LocalDateTime.now  // データ作成日
)

// コンパニオンオブジェクト
//~~~~~~~~~~~~~~~~~~~~~
object Purchase{

  // --[ 管理ID ]---------------------------------------------------------------
  type Id = Long
}
