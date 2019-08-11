package controllers.product

import play.api.i18n.I18nSupport
import play.api.mvc.{AbstractController, MessagesControllerComponents}
import persistence.idol.dao.IdolDao
import persistence.idol_products.dao.IdolProductsDAO
import persistence.product.dao.ProductDAO
import persistence.purchase_history.dao.PurchaseHistoryDao
import persistence.purchase_history.model.PurchaseHistory
import mvc.action.AuthenticationAction
import model.site.idol.SiteViewIdolDetail
import model.site.product.SiteViewProductDetail
import model.component.util.ViewValuePageLayout
import persistence.idol.model.Idol
import persistence.product.model.Product

import model.site.message.MessageByIdol
import persistence.message.dao.MessageDao


// 商品
class ProductController @javax.inject.Inject()(
  val idolDao   : IdolDao,
  val idolProductDao: IdolProductsDAO,
  val productDao: ProductDAO,
  val messageDao     : MessageDao,
  val purchaseHistoryDao: PurchaseHistoryDao,
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

//  def purchase(idolId: Idol.Id, productId: Product.Id) = (Action andThen AuthenticationAction()) { implicit userRequest =>
  def purchase(idolId: Idol.Id, productId: Product.Id) = Action.async { implicit request =>
    val insertData:PurchaseHistory = PurchaseHistory(
          None,
          1,
          productId,
          1,
          idolId,
        )
    print(insertData)

    for{
      _ <- purchaseHistoryDao.add(insertData)

      idolA    <- idolDao.get(idolId)
      prdoucts <- idolProductDao.getProductsByIdolid(productId)

      message  <- messageDao.get(idolId)
    } yield {
      val vvIdol = SiteViewIdolDetail(
        layout   = ViewValuePageLayout(id = request.uri),
        idol     = idolA.get,
        products = prdoucts
      )

      val vvMessage = MessageByIdol(
        layout  = ViewValuePageLayout(id = request.uri),
        message = message.get
      )
      
      Ok(views.html.site.purchase.complete.Main(vvIdol, vvMessage))
    }
  }
}