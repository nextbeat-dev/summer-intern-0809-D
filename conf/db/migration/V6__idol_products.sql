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