# get start
1. コンテナを立ち上げる。
```
docker compose up
```
2. データベースを作る
```
docker compose exec web rails db:create
```
3. データベースをマイグレーションする
```
docker compose exec web rails db:migrate
```
