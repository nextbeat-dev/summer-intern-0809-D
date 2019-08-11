package model.site.idol

import model.component.util.ViewValuePageLayout
import persistence.idol.model.Idol

// 表示: アイドル一覧
//~~~~~~~~~~~~~~~~~~~~~
case class SiteViewIdolRanking(
   layout: ViewValuePageLayout,
   top3IdolSeq: Seq[Idol],
   notTop3IdolSeq: Seq[Idol],
   purchaseCountSeq : Seq[(Idol.Id, Int)]
 )
