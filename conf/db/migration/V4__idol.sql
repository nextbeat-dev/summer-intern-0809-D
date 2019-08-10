-- アイドル定義 (sample)
----------------------
CREATE TABLE "idol" (
  "id"          INT             NOT     NULL AUTO_INCREMENT PRIMARY KEY,
  "name"        VARCHAR(255)    NOT     NULL,
  "profile"     VARCHAR(1024)   DEFAULT NULL,
  "twitter_id"  VARCHAR(255)    DEFAULT NULL,
  "updated_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "created_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB;

-- アイドル情報
INSERT INTO "idol" ("name", "profile", "twitter_id") VALUES ('Idol 1', 'Profile 1', '@<TEST 1>');
INSERT INTO "idol" ("name", "profile", "twitter_id") VALUES ('Idol 2', 'Profile 2', '@<TEST 2>');
INSERT INTO "idol" ("name", "profile", "twitter_id") VALUES ('Idol 3', 'Profile 3', '@<TEST 3>');
INSERT INTO "idol" ("name", "profile", "twitter_id") VALUES ('Idol 4', 'Profile 1', '@<TEST 4>');
INSERT INTO "idol" ("name", "profile", "twitter_id") VALUES ('Idol 5', 'Profile 2', '@<TEST 5>');
INSERT INTO "idol" ("name", "profile", "twitter_id") VALUES ('Idol 6', 'Profile 3', '@<TEST 6>');
INSERT INTO "idol" ("name", "profile", "twitter_id") VALUES ('Idol 7', 'Profile 1', '@<TEST 7>');
INSERT INTO "idol" ("name", "profile", "twitter_id") VALUES ('Idol 8', 'Profile 2', '@<TEST 8>');
INSERT INTO "idol" ("name", "profile", "twitter_id") VALUES ('Idol 9', 'Profile 3', '@<TEST 9>');
INSERT INTO "idol" ("name", "profile", "twitter_id") VALUES ('Idol 10', 'Profile 1', '@<TEST 10>');

