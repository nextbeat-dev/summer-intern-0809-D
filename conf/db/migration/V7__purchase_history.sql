--purchase_history定義
--------------
CREATE TABLE "purchase_history" (
  "id"              INT     NOT NULL AUTO_INCREMENT PRIMARY KEY,
  "user_id"         INT     NOT NULL,
  "product_id"      INT     NOT NULL,
  "purchase_num"    INT     NOT NULL,
  "idol_id"         INT     NOT NULL,
  "updated_at"  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "created_at"  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '1', '1', '1');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '2', '1', '1');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '3', '1', '1');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '4', '1', '1');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '5', '1', '1');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '6', '1', '2');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '7', '1', '2');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '8', '1', '3');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '9', '1', '3');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '10', '1', '4');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '11', '1', '4');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '12', '1', '5');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '13', '1', '5');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '14', '1', '6');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '15', '1', '6');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '16', '1', '7');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '17', '1', '7');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '18', '1', '8');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '19', '1', '8');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '20', '1', '9');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '21', '1', '9');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '22', '1', '10');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '23', '1', '10');
INSERT INTO "purchase_history" ("user_id", "product_id", "purchase_num", "idol_id") VALUES ('1', '24', '1', '10');