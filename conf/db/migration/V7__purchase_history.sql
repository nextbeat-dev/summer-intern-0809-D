--purchase_history定義
--------------
CREATE TABLE "purchase_history" (
  "id"              INT     NOT NULL AUTO_INCREMENT PRIMARY KEY,
  "user_id"         INT     NOT NULL,
  "product_id"      INT     NOT NULL,
  "purchase_num"    INT     NOT NULL,

) ENGINE=InnoDB;

