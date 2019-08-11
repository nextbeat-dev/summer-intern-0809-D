package model.site.product

import model.component.util.ViewValuePageLayout
import persistence.product.model.Product

case class SiteViewProductDetail (
  layout:   ViewValuePageLayout,
  product:  Option[Product]
)
