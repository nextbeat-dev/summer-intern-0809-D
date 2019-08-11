-- sample定義 (sample)
--------------
CREATE TABLE "product" (
  "id"          INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  "name"        VARCHAR(255) NOT NULL,
  "price"       INT          NOT NULL,
  "stock"       INT          NOT NULL,
  "detail"      VARCHAR(2550) NOT NULL,
  "updated_at"  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  "created_at"  timestamp    NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- 商品情報 (sample)
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('カンガルー サーロイン ブロック 450g', '2690', '12', 'オーストラリアではカンガルーは「ルー」と呼ばれていて、スーパーなどでも手軽に買えます。そんなルーミートが現在世界からの注目を集めているってこと知っていました？理由は脂肪分が極めて少なく、高タンパク、そして低コレストロール。聞くところによるとオーストラリア国立心臓病学会で食生活改善のための推奨食材に認定されているらしい。 ヘルシー、テイスティー、環境にやさしい、などの理由からカンガルー肉がヒットチャート上昇中！ その上、野生なのでホルモン剤、抗生物質、その他化学薬品などは一切使用されていないのは言うまでもなく．．．基本的には有機食肉なのですが、ご存知の通り、有機（オーガニック）と呼ぶためには、捕獲してオーガニック認定牧場内で飼育しなければいけないので、反対に野生ではなくなってしまうんです。 カンガルーをオーストラリア未開拓奥地（the great Australian outback）の管理人と呼ぶ人もいますが、その理由はクッションの効いた大きな足は牛や羊、ラグビープレイヤー！？などのように、固有の植物を踏みつけて歩かないからだそうです。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('加賀棒ほうじ茶　525ml　1箱（24本入）', '2000', '25', '金沢発祥の伝統的な焙煎方法を用いたプレミアムほうじ茶です。金沢の伝統的な“棒ほうじ”を使用することで、香ばしさとコクを引き出した、上品な味わいのほうじ茶です。石川県焙煎国産茎茶100％使用。女性にうれしい低カフェイン。無菌充填生産。いつもの食事や午後のおやつの時間にも最適です。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('三河一色産うなぎ蒲焼２尾', '3000', '14', '日本有数のうなぎの産地、愛知県西尾一色町より、三河一色産の鰻蒲焼をお届けします。矢作川の自然水と、アジ、イワシなどを餌としてあたえた、うなぎ本来の味にこだわった蒲焼をご賞味ください。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('しれとこヤギミルク (200ml) ×10本', '2400', '45', '山羊ミルクは牛乳より栄養的に優れており、消化も良くおすすめです。本来の栄養や風味をほぼ損なわず、クリーミーでコクのあるさらっとした飲み口が味わえます。人とペットも一緒に飲める安心安全な北海道産ヤギミルクお求め下さい。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('ミルク本舗 オトナのヤギミルク 50g', '2000', '22', 'オランダ産ヤギミルクには、食べる事も飲む事も出来ない犬猫の命を救う力があります。獣医さんも諦めるほど食欲が無かった子が、オランダ産ヤギミルクだけは飲んでくれました。みるみる元気になって普通食に戻り、一命を取り留めました。毎日、「家族」と「オランダ産ヤギミルク」の出会いで小さなドラマが生まれています。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('お中元 スイカ らいでんすいか 北海道産 【 秀品 】 １玉', '6000', '16', '北海道岩内郡共和町で生産されるスイカ「らいでん西瓜」は、北海道有数のスイカ産地として当麻町の「でんすけすいか」と並ぶ北海道を代表するスイカです。共和町は道内でも比較的温暖な土地柄。夏は雷電海岸からの冷涼な海風がそよぎ、極端な高温にならないという環境にあり、さらに昼夜の寒暖差がスイカの糖度を上げ、シャリシャリ感のあるスイカに仕上がり、近年人気のスイカです。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('南信州ここだに お贈答 市田柿 南信州産 干し柿 700g', '2700', '39', '長野県の人気特産品である「市田柿」を贈答用にしました。冬の時期になると毎日地元の農家さんと打ち合わせをしながら仕入れてくる、最高の柿を、他社にはできない選別した状態で贈ります。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('グラスフェッドビーフ サーロインブロック (約1kg) ブロック肉 ステーキ ローストビーフ Grass-fed Beef Sirloin Block (1kg)', '3000', '14', 'オーストラリア産牛ロースのブロック（かたまり肉）1kg！お好みの厚さのステーキにカットしたり、ちょっと贅沢なローストビーフとして、又はバーベキューグリルで丸ごと豪快に焼いてからスライスしてみて はいかがでしょうか？赤身でさっぱり＆ヘルシーなオージー牛肉ファンの方にはもちろん、“和牛種のサーロイン塊をローストビーフにしてしまうのは気が引ける”という方にもオススメ！まずはこちらで試してみてください。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('九州産 豚こま切れ肉 メガ盛り 1.5kg', '1500', '37', '小分けで便利な豚こまです。野菜炒め、焼きそば、肉じゃがなど様々な料理に重宝します。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('骨まで食べられる焼き魚', '1000', '12', '遠赤外線と直火で丁寧に焼きあげた干物を真空パックし、圧力釜で熱と圧力を加えることで頭から尻尾、骨まで残さずまるごと食べられる焼き魚にしあげました。固いものが苦手なお年寄りや、骨を取るのが面倒で魚を食べてくれないお子様にもおすすめ。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('高級 のどぐろ 入り 干物 詰め合わせ 5種セット', '1000', '10', '福井県敦賀市にある実店舗“日本海側最大級の魚市場”日本海さかな街でも大人気の高級のどぐろ入り干物詰め合わせです。食通のあいだで「幻の魚」「白身のトロ」と言われている、人気の高級魚ノドグロをはじめ、したたり落ちる上質な脂たっぷりのトロサバ、ステーキにも劣らぬ肉厚ジューシーな縞ホッケなど、選りすぐり全5種類の魚種が一度に楽しめる贅沢な詰め合わせです。');
INSERT INTO "product" ( "name", "price", "stock", "detail") VALUES ('魚の北辰 お魚屋さんの押し寿司(焼きさば)', '1000', '10', 'この商品は特産品12です。');
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

