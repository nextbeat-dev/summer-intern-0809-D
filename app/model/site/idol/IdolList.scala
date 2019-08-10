package model.site.idol

import model.component.util.ViewValuePageLayout
import persistence.idol.model.Idol

// 表示: アイドル一覧
//~~~~~~~~~~~~~~~~~~~~~
case class SiteViewIdolList(
  layout: ViewValuePageLayout,
  idols : Seq[Idol]
)
