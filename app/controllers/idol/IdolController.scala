package controllers.idol

import play.api.i18n.I18nSupport
import play.api.mvc.{AbstractController, MessagesControllerComponents}
import persistence.idol.dao.IdolDao
import persistence.idol_products.dao.IdolProductsDAO
import model.site.idol.SiteViewIdolList
import model.site.idol.SiteViewIdolDetail
import model.component.util.ViewValuePageLayout

class IdolController @javax.inject.Inject()(
  val idolDao: IdolDao,
  val idolProductDao: IdolProductsDAO,
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

  /**
    * アイドル詳細ページ
    */
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
