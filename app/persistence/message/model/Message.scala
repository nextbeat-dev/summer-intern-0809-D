package persistence.message.model

import play.api.data._
import play.api.data.Forms._
import java.time.LocalDateTime
import persistence.idol.model.Idol

// メッセージ情報
//~~~~~~~~~~~~~~
case class Message(
  id       : Option[Message.Id],                 // メッセージのID
  idolId   : Idol.Id,                            // 発言するアイドルのID
  message  : String,                             // メッセージ
  updatedAt: LocalDateTime = LocalDateTime.now,  // データ更新日
  createdAt: LocalDateTime = LocalDateTime.now   // データ作成日
)

// コンパニオンオブジェクト
//~~~~~~~~~~~~~~~~~~~~~
object Message{

  // --[ 管理ID ]---------------------------------------------------------------
  type Id = Long

  // --[ フォーム定義 ]---------------------------------------------------------
  val formForNewMessage = Form(
    mapping(
      "idolId"     -> longNumber,
      "message"    -> nonEmptyText,
    )(Function.untupled(
      t => Message(None, t._1, t._2)
    ))(Message.unapply(_).map(
      t => (t._2, t._3)
    ))
  )
}

