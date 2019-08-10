package persistence.purchase_history.model

import java.time.LocalDateTime

import play.api.data.Forms._
import play.api.data._

import persistence.udb.model.User
import persistence.product.model.Product
import persistence.idol.model.Idol

// 購入履歴情報
//~~~~~~~~~~~~~~
case class PurchaseHistory(
  id:           Option[PurchaseHistory.Id],
  user_id:      User.Id,                           // 購入したファンのid
  product_id:   Product.Id,                        // 購入された商品のid
  purchase_num: Int,                               // ファンが購入した数
  idol_id:      Idol.Id,
  updatedAt:    LocalDateTime = LocalDateTime.now, // データ更新日
  createdAt:    LocalDateTime = LocalDateTime.now  // データ作成日
)

// コンパニオンオブジェクト
//~~~~~~~~~~~~~~~~~~~~~
object PurchaseHistory{

  // --[ 管理ID ]---------------------------------------------------------------
  type Id = Long
}
