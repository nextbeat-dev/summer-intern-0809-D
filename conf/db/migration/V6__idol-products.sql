-- idol-products定義
--------------
CREATE TABLE "idol-products" (
  "id"          INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  "product_id"  INT,
  "idle_id"     INT,
  "location_id" INT,
  "updated_at"  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "created_at"  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

