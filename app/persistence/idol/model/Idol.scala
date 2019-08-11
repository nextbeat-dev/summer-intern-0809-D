package persistence.idol.model

import play.api.data._
import play.api.data.Forms._
import java.time.LocalDateTime

// アイドル情報
//~~~~~~~~~~~~~~
case class Idol(
  id       : Option[Idol.Id],                    // アイドルのID
  // groupId:   Option[Group.Id],                  // アイドルのグループID
  name     : String,                             // アイドル名
  profile  : String,                             // アイドル情報
  twitterId: String,                             // アイドル個人のTwitterのID
  location : String,                             // アイドルの出身地
  updatedAt: LocalDateTime = LocalDateTime.now,  // データ更新日
  createdAt: LocalDateTime = LocalDateTime.now   // データ作成日
)

// コンパニオンオブジェクト
//~~~~~~~~~~~~~~~~~~~~~
object Idol{

  // --[ 管理ID ]---------------------------------------------------------------
  type Id = Long

  // --[ フォーム定義 ]---------------------------------------------------------
  val formForNewUser = Form(
    mapping(
      "name"       -> nonEmptyText,
      "profile"    -> nonEmptyText,
      "twitterId"  -> nonEmptyText,
      "location"   -> nonEmptyText,
    )(Function.untupled(
      t => Idol(None, t._1, t._2, t._3, t._4)
    ))(Idol.unapply(_).map(
      t => (t._2, t._3, t._4, t._5)
    ))
  )
}
