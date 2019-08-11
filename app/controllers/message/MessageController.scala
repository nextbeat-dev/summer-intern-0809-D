package controllers.message

import play.api.i18n.I18nSupport
import play.api.mvc.{AbstractController, MessagesControllerComponents}
import model.component.util.ViewValuePageLayout

import persistence.idol.dao.IdolDao
import persistence.idol.model.Idol
import persistence.product.model.Product
import persistence.message.dao.MessageDao
import persistence.idol_products.dao.IdolProductsDAO
import model.site.idol.SiteViewIdolDetail
import model.site.message.MessageByIdol

class MessageController @javax.inject.Inject()(
  val idolDao        : IdolDao,
  val messageDao     : MessageDao,
  val idolProductDao : IdolProductsDAO,
  cc: MessagesControllerComponents
) extends  AbstractController(cc) with I18nSupport {
  implicit lazy val executionContext = defaultExecutionContext

  /**
    * 購入完了ページ
    */
  def complete(i_id: Idol.Id, p_id: Product.Id) = Action.async { implicit request =>
    for{
      idolA    <- idolDao.get(i_id)
      prdoucts <- idolProductDao.getProductsByIdolid(p_id)

      message  <- messageDao.getComplete(i_id)
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
