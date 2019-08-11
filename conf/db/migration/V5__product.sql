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
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('カンガルー サーロイン ブロック 450g', '2,690', '12', 'オーストラリアではカンガルーは「ルー」と呼ばれていて、スーパーなどでも手軽に買えます。そんなルーミートが現在世界からの注目を集めているってこと知っていました？理由は脂肪分が極めて少なく、高タンパク、そして低コレストロール。聞くところによるとオーストラリア国立心臓病学会で食生活改善のための推奨食材に認定されているらしい。 ヘルシー、テイスティー、環境にやさしい、などの理由からカンガルー肉がヒットチャート上昇中！ その上、野生なのでホルモン剤、抗生物質、その他化学薬品などは一切使用されていないのは言うまでもなく．．．基本的には有機食肉なのですが、ご存知の通り、有機（オーガニック）と呼ぶためには、捕獲してオーガニック認定牧場内で飼育しなければいけないので、反対に野生ではなくなってしまうんです。 カンガルーをオーストラリア未開拓奥地（the great Australian outback）の管理人と呼ぶ人もいますが、その理由はクッションの効いた大きな足は牛や羊、ラグビープレイヤー！？などのように、固有の植物を踏みつけて歩かないからだそうです。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('加賀棒ほうじ茶　525ml　1箱（24本入）', '2000', '25', 'この商品は特産品2です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('三河一色産うなぎ蒲焼２尾 ', '3000', '14', 'この商品は特産品3です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('しれとこヤギミルク (200ml) ×10本', '2400', '45', 'この商品は特産品4です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('ミルク本舗 オトナのヤギミルク 50g', '2000', '22', 'この商品は特産品5です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('お中元 スイカ らいでんすいか 北海道産 【 秀品 】 １玉', '6000', '16', 'この商品は特産品6です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('南信州ここだに お贈答 市田柿 南信州産 干し柿 700g', '2700', '39', 'この商品は特産品7です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('グラスフェッドビーフ サーロインブロック (約1kg) ブロック肉 ステーキ ローストビーフ Grass-fed Beef Sirloin Block (1kg)', '3000', '14', 'この商品は特産品8です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('九州産 豚こま切れ肉 メガ盛り 1.5kg', '1500', '37', 'この商品は特産品9です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('骨まで食べられる焼き魚', '1000', '12', 'この商品は特産品10です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('高級 のどぐろ 入り 干物 詰め合わせ 5種セット', '1000', '10', 'この商品は特産品11です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('魚の北辰 お魚屋さんの押し寿司(焼きさば)[消費期限:お届け日当日]', '1000', '10', 'この商品は特産品12です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('酒蔵の大吟醸日本酒飲み比べ一升瓶５本セット', '1000', '10', 'この商品は特産品13です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES (' 獺祭(だっさい) 純米大吟醸45 1800ml', '1000', '10', 'この商品は特産品14です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('石川 地酒 清酒 限定品 天狗舞', '1000', '10', 'この商品は特産品15です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES (' 手取川　吉田蔵　大吟醸　1800ml ', '1000', '10', 'この商品は特産品16です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('壽酒造 あやめさけ 蒼庵', '1000', '10', 'この商品は特産品17です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('壽酒造 國乃長 大吟醸 [ 日本酒 大阪府 1800ml ]', '1000', '10', 'この商品は特産品18です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('和歌山産業 蔵王高原農園 フルーツソース ブルーベリー 300g 1ケース(6本入)', '1000', '10', 'この商品は特産品19です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('フルーツハーブ さんざし(き釈用)900ml 希釈タイプ', '1000', '10', 'この商品は特産品21です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('フルーツ 白桃【白麗（はくれい）、瀬戸内白桃からおまかせ】 (7～8玉/2kg)', '1000', '10', 'この商品は特産品20です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('長野県小布施産 赤いりんご 60g ドライフルーツ', '1000', '10', 'この商品は特産品22です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('讃岐　よもぎうどん　5人前（半生麺）', '1000', '10', 'この商品は特産品23です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('天狗中田本店　能登牛・能登豚しゃぶしゃぶセット', '1000', '10', 'この商品は特産品24です。');

