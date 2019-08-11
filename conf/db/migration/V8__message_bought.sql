CREATE TABLE "message_bought"(
  "id"          INT             NOT     NULL AUTO_INCREMENT PRIMARY KEY,
  "idol_id"     INT             NOT     NULL,
  "message"     VARCHAR(1024)   NOT     NULL,
  "updated_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "created_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB;

INSERT INTO "message_bought" ("idol_id", "message") VALUES ('1', 'ありがとうございます！');;
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('2', 'ありがとう');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('3', 'ありがとね〜');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('4', 'またお願いね！');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('5', 'また買ってくれてもいいんだぞ');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('6', 'ありがとうございます！');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('7', 'ありがとうございます！');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('8', 'ありがとうございます！');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('9', 'ありがとうございます！');
INSERT INTO "message_bought" ("idol_id", "message") VALUES ('10', 'ありがとうございます！');

