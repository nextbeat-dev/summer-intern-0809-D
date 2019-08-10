-- sample定義 (sample)
--------------
CREATE TABLE "product" (
  "id"          INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  "name"        VARCHAR(255) NOT NULL,
  "price"       INT          NOT NULL,
  "stock"       INT          NOT NULL,
  "detail"      VARCHAR(255) NOT NULL,
  "updated_at"  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "created_at"  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 商品情報 (sample)
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品1', '10000', '100', 'この商品は特産品1です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品2', '20000', '100', 'この商品は特産品2です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品3', '30000', '100', 'この商品は特産品3です。');
