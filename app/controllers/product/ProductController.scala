package controllers.product

import play.api.i18n.I18nSupport
import play.api.mvc.{AbstractController, MessagesControllerComponents}
import persistence.product.dao.ProductDAO
import persistence.product.model.Product
import model.site.product.SiteViewValueProduct
import model.component.util.ViewValuePageLayout

// 商品
class ProductController @javax.inject.Inject()(
  val productDao: ProductDAO,
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
}