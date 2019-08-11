package controllers.idol

import play.api.i18n.I18nSupport
import play.api.mvc.{AbstractController, MessagesControllerComponents}
import persistence.idol.dao.IdolDao
import persistence.idol_products.dao.IdolProductsDAO
import persistence.purchase_history.dao.PurchaseHistoryDao
import model.site.idol.SiteViewIdolList
import model.site.idol.SiteViewIdolDetail
import model.site.idol.SiteViewIdolRanking
import model.component.util.ViewValuePageLayout

class IdolController @javax.inject.Inject()(
  val idolDao: IdolDao,
  val idolProductDao: IdolProductsDAO,
  val purchaseHistoryDao: PurchaseHistoryDao,
  cc: MessagesControllerComponents
) extends  AbstractController(cc) with I18nSupport {
  implicit lazy val executionContext = defaultExecutionContext

  /**
    * アイドル一覧ページ
    */
  def list = Action.async { implicit request =>
    for{
      idolSeq <- idolDao.findAll
    } yield {
      val vv = SiteViewIdolList(
        layout = ViewValuePageLayout(id = request.uri),
        idols   = idolSeq
      )
      // printf(idolSeq(1).name)
      Ok(views.html.site.idol.list.Main(vv))
    }
  }

  def ranking = Action.async { implicit request =>
    for {
      idolSeq <- idolDao.findAll
      purchaseCountList <- purchaseHistoryDao.getPurchaseCountList
    } yield {
      val vv = SiteViewIdolRanking(
        layout = ViewValuePageLayout(id = request.uri),
        idols = idolSeq,
        purchaseCountSeq = purchaseCountList
      )
      // printf(idolSeq(1).name)
      Ok(views.html.site.idol.ranking.Main(vv))
    }
  }

  def detail(id: Long) = Action.async { implicit request =>
    for{
      idolA <- idolDao.get(id)
      prdoucts <- idolProductDao.getProductsByIdolid(id)
    } yield {
      val vv = SiteViewIdolDetail(
        layout = ViewValuePageLayout(id = request.uri),
        idol   = idolA.get,
        products = prdoucts
      )
      // printf(idolSeq(1).name)
      Ok(views.html.site.idol.detail.Main(vv))
    }
  }
}
