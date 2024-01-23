
1.イメージを作成。
```
docker compose build
```
2. コンテナを立ち上げる。
```
docker compose up -d
```
3. データベースを作る。
```
docker compose exec web rails db:create
```
4. データベースをマイグレーションする。
```
docker compose exec web rails db:migrate
```
5.seedsに作成データをいれる。
```
docker compose exec web rails db:seed
```
