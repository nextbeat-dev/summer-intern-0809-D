package model.site.product

import model.component.util.ViewValuePageLayout
import persistence.product.model.Product

case class SiteViewValueProduct (
  layout:   ViewValuePageLayout,
  product:  Option[Product]
)
