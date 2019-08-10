package model.site.idol

import model.component.util.ViewValuePageLayout
import persistence.idol.model.Idol

// 表示: アイドル詳細
//~~~~~~~~~~~~~~~~~~~~~
case class SiteViewIdolDetail(
  layout: ViewValuePageLayout,
  idol  : Idol
)

