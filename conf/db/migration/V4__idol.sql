-- アイドル定義 (sample)
----------------------
CREATE TABLE "idol" (
  "id"          INT             NOT     NULL AUTO_INCREMENT PRIMARY KEY,
  "name"        VARCHAR(255)    NOT     NULL,
  "profile"     VARCHAR(1024)   DEFAULT NULL,
  "twitter_id"  VARCHAR(255)    DEFAULT NULL,
  "location"    VARCHAR(255)    NOT     NULL,
  "updated_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "created_at"  timestamp       NOT     NULL DEFAULT CURRENT_TIMESTAMP
)ENGINE=InnoDB;

-- アイドル情報
INSERT INTO "idol" ("name", "profile", "twitter_id", "location") VALUES ('島村卯月',  'クラスメイトの誰もが「卯月ちゃんは友だち ! 」と言うらしい。', '@AyakaOhashi', '東京都');
INSERT INTO "idol" ("name", "profile", "twitter_id", "location") VALUES ('赤城みりあ', '家族に花や現場のお菓子などのお土産を毎日持って帰るらしい。', '@TomoyoKurosawa', '東京');
INSERT INTO "idol" ("name", "profile", "twitter_id", "location") VALUES ('アナスタシア', '話すのは少し苦手でロシア語の単語を出してから日本語の文章に直して話すくせがある。', '@uesaka_official', '北海道');
INSERT INTO "idol" ("name", "profile", "twitter_id", "location") VALUES ('安部菜々',   '自宅で、アニメを見ながらアフレコ練習をしているらしい。', '@38kMarie', 'ウサミン星');
INSERT INTO "idol" ("name", "profile", "twitter_id", "location") VALUES ('荒木比奈',   '夏と冬のスケジューリングは必死に調整するらしい。', '@ruinokaramawari', '神奈川');
INSERT INTO "idol" ("name", "profile", "twitter_id", "location") VALUES ('五十嵐響子', '着る服の趣味が、ガラッと変わることがあるらしい。', '@aoremi0306', '鳥取');
INSERT INTO "idol" ("name", "profile", "twitter_id", "location") VALUES ('一ノ瀬志希',  '独り暮らしをしているがたまに家に帰らないらしい。', '@aihara_k_', '岩手');
INSERT INTO "idol" ("name", "profile", "twitter_id", "location") VALUES ('市原仁奈',   '着ぐるみを着ているとかわいがってもらえるのが嬉しいらしい。', '@asunoyuumi', '静岡');
INSERT INTO "idol" ("name", "profile", "twitter_id", "location") VALUES ('上田鈴帆',   '指先の傷は努力の証らしい。', '@nanami326', '福岡');
INSERT INTO "idol" ("name", "profile", "twitter_id", "location") VALUES ('及川雫',     '利き牛乳ができるらしい。', '@yuri_nogu', '岩手');

