
1.イメージを作成
```
docker compose build
```
2. コンテナを立ち上げる。
```
docker compose up -d
```
2. データベースを作る
```
docker compose exec web rails db:create
```
3. データベースをマイグレーションする
```
docker compose exec web rails db:migrate
```
4.seedsを作成データをいれよう
```
docker compose exec web rails db:seed
```
