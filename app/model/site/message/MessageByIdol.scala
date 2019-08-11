package model.site.message

import model.component.util.ViewValuePageLayout
import persistence.message.model.Message

// 表示: 購入後メッセージ
//~~~~~~~~~~~~~~~~~~~~~
case class MessageByIdol(
  layout  : ViewValuePageLayout,
  message : Message
)
