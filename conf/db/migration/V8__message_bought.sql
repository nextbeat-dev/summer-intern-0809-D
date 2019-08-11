CREATE TABLE "message_bought"(
  "id"          INT             NOT     NULL AUTO_INCREMENT PRIMARY KEY,
  "idol_id"     INT             NOT     NULL,
  "message"     VARCHAR(1024)   NOT     NULL,
  "updated_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "created_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB;

INSERT INTO "message_bought" ("idol_id", "message") VALUES ('1', 'また来てね〜');;
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('2', '買ってくれてありがとう！');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('3', 'ありがと');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('4', 'わーい、嬉しいな！');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('5', 'ありがとうございます。');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('6', '今日は宴会ですね♩');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('7', 'お、いいねいいね！');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('8', 'ありがてーのです！');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('9', '今日もだんだんねー');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('10', 'また来てくださいねー');

