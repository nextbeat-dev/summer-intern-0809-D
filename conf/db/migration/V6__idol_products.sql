-- idol-products定義
--------------
CREATE TABLE "idol_products" (
  "id"          INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  "product_id"  INT          NOT NULL,
  "idol_id"     INT          NOT NULL ,
  "location_id" varchar(8)   NOT     NULL,
  "updated_at"  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "created_at"  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('1', '1', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('2', '1', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('3', '1', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('4', '1', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('5', '1', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('6', '2', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('7', '2', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('8', '3', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('9', '3', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('10', '4', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('11', '4', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('12', '5', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('13', '5', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('14', '6', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('15', '6', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('16', '7', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('17', '7', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('18', '8', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('19', '8', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('20', '9', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('21', '9', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('22', '10', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('23', '10', '01100');
INSERT INTO "idol_products" ("product_id", "idol_id", "location_id") VALUES ('24', '10', '01100');