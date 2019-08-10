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
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品2', '20000', '200', 'この商品は特産品2です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品3', '30000', '300', 'この商品は特産品3です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品4', '40000', '400', 'この商品は特産品4です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品5', '50000', '500', 'この商品は特産品5です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品6', '60000', '600', 'この商品は特産品6です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品7', '70000', '700', 'この商品は特産品7です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品8', '80000', '800', 'この商品は特産品8です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品9', '90000', '900', 'この商品は特産品9です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('商品10', '100000', '1000', 'この商品は特産品10です。');

