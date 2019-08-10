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

