# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリケーション名
- ooruri

# アプリケーション概要
- 「より素敵に、よりハッピーに」をテーマにした、商品、イベント、記事を発信。
- 自分に似合う帽子を見つけ購入する事もできる。

# URL
- https://furima-36759.herokuapp.com/

# テスト用アカウント
- 購入者用
- メールアドレス: sample1@sample.com
- パスワード: nirvana3
- 購入用カード情報
- 番号：4242424242424242
- 期限：3月33年
- セキュリティコード：123
- 出品者用
- メールアドレス名: sample@sample.com
- パスワード: nirvana3

# 利用方法
- 出品方法
- テストアカウントでログイン→トップページから出品ボタン押下→商品情報入力→商品出品
- 購入方法
- テストアカウントでログイン→トップページから商品検索→商品選択→商品購入

# 目指した課題解決
- より素敵に、よりハッピーになりたい人に対して、商品や情報を通じてその思いを実現する

# テーブル設計

## users テーブル

| Column             | Type      | Options                   |
| ------------------ | --------- | ------------------------- |
| email              | string    | null: false, unique: true |
| encrypted_password | string    | null: false               |
| nickname           | string    | null: false               |
| family_name        | string    | null: false               |
| first_name         | string    | null: false               |
| family_name_kana   | string    | null: false               |
| first_name_kana    | string    | null: false               |
| birth_day          | date      | null: false               |

### Association

- has_many :items

## items テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| name               | string     | null: false                    |
| description        | text       | null: false                    |
| price              | integer    | null: false                    |
| prymary_category   | string     | null: false                    |
| secondary_category | string     | null: false                    |
| delivery_area      | string     | null: false                    |
| delivery_day       | string     | null: false                    |
| delivery_charge    | string     | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user

