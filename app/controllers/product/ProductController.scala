package controllers.product

import play.api.i18n.I18nSupport
import play.api.mvc.{AbstractController, MessagesControllerComponents}
import persistence.product.dao.ProductDAO
import persistence.purchase_history.dao.PurchaseHistoryDao
import persistence.purchase_history.model.PurchaseHistory
import mvc.action.AuthenticationAction
import model.site.product.SiteViewValueProduct
import model.component.util.ViewValuePageLayout
import routes

// 商品
class ProductController @javax.inject.Inject()(
  val productDao: ProductDAO,
  val purchaseHistoryDao: PurchaseHistoryDao,
  cc: MessagesControllerComponents
) extends  AbstractController(cc) with I18nSupport {
  implicit lazy val executionContext = defaultExecutionContext

  /**
    * 商品詳細ページ
    */
  def detail(idolId: Long, productId: Long) = Action.async { implicit request =>
    for {
      product <- productDao.get(productId)
    } yield {
      val vv = SiteViewValueProduct(
        layout     = ViewValuePageLayout(id = request.uri),
        product = product
      )
      // とりあえずrecruitページに飛ぶ
      Redirect("/recruit/intership-for-summer-21")
    }
  }

  def purchase(idolId: Long, productId: Long) = (Action andThen AuthenticationAction()) { implicit userRequest =>
    purchaseHistoryDao.add(
      PurchaseHistory(
        None,
        userRequest.userId,
        productId,
        1,
//        idolId
      )
    )
    Redirect("/recruit/intership-for-summer-21")
  }
}