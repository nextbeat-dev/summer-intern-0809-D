CREATE TABLE "message_detail"(
  "id"          INT             NOT     NULL AUTO_INCREMENT PRIMARY KEY,
  "idol_id"     INT             NOT     NULL,
  "message"     VARCHAR(1024)   NOT     NULL,
  "updated_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "created_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB;

INSERT INTO "message_detail" ("idol_id", "message") VALUES ('1', 'お弁当にはいつも、これが入ってます♪おいしくて、栄養ばっちり！');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('2', 'プロデューサーさんにはこのフルーツがおすすめだよっ！');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('3', 'プレゼントがあります。きっと…気持ちも詰まっていると思います。');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('4', 'ナナのおすすめ商品ですよ〜！');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('5', 'なんというか、この商品、少し輝いてません？');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('6', '今日の晩酌は何にしようかな？獺祭…それとも清酒…うーん');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('7', 'さぁて、今日はどっちにする〜？');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('8', '毎朝パンと一緒に食べるでごぜーます！');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('9', '力が漲ってくるばい！');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('10', '牛乳も最高ですが、こちらの商品も絶品なんですー');

