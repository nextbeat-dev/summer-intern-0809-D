package controllers.idol

import play.api.i18n.I18nSupport
import play.api.mvc.{AbstractController, MessagesControllerComponents}
import persistence.idol.dao.IdolDao
import persistence.idol.model.Idol
import model.site.idol.SiteViewIdolList
import model.component.util.ViewValuePageLayout

class IdolController @javax.inject.Inject()(
  val idolDao: IdolDao,
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
      Ok(views.html.site.idol.list.Main(vv))
    }
  }
}
