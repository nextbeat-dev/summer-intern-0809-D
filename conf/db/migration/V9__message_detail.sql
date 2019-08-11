CREATE TABLE "message_detail"(
  "id"          INT             NOT     NULL AUTO_INCREMENT PRIMARY KEY,
  "idol_id"     INT             NOT     NULL,
  "message"     VARCHAR(1024)   NOT     NULL,
  "updated_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "created_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB;

INSERT INTO "message_detail" ("idol_id", "message") VALUES ('1', 'おすすめだよ！');;
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('2', '私もいつも食べてるよ〜');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('3', '肌が綺麗になるよ！');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('4', '私はこれを毎日食べてるの');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('5', 'とっても美味しいよ');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('6', 'さっぱりしてて美味しい！');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('7', 'おすすめだよ！');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('8', 'おすすめだよ！');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('9', 'おすすめだよ！');
INSERT INTO "message_detail" ("idol_id", "message") VALUES ('10', 'おすすめだよ！');

