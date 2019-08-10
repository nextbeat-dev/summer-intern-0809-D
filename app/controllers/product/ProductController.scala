package controllers.product

import play.api.i18n.I18nSupport
import play.api.mvc.{AbstractController, MessagesControllerComponents}
import persistence.idol.dao.IdolDao
import persistence.idol_products.dao.IdolProductsDAO
import persistence.product.dao.ProductDAO
import persistence.product.model.Product
import model.site.idol.SiteViewIdolDetail
import model.site.product.SiteViewProductDetail
import model.component.util.ViewValuePageLayout

// 商品
class ProductController @javax.inject.Inject()(
  val idolDao   : IdolDao,
  val idolProductDao: IdolProductsDAO,
  val productDao: ProductDAO,
  cc: MessagesControllerComponents
) extends  AbstractController(cc) with I18nSupport {
  implicit lazy val executionContext = defaultExecutionContext

  /**
    * 商品詳細ページ
    */

  def detail(idolId: Long, productId: Long) = Action.async { implicit request =>
    for {
      idol     <- idolDao.get(idolId)
      prdoucts <- idolProductDao.getProductsByIdolid(idolId)

      product  <- productDao.get(productId)
    } yield {
      val vvIdol = SiteViewIdolDetail(
        layout  = ViewValuePageLayout(id = request.uri),
        idol = idol.get,
        products = prdoucts
      )

      val vvProduct = SiteViewProductDetail(
        layout  = ViewValuePageLayout(id = request.uri),
        product = product
      )
      Ok(views.html.site.product.detail.Main(vvIdol, vvProduct))

      // とりあえずrecruitページに飛ぶ
      // Redirect("/recruit/intership-for-summer-21")
    }
  }
}