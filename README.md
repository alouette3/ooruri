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

# 洗い出した要件
- 優先順位
- （高：3、中：2、低：1）"	機能	目的	詳細	ストーリー(ユースケース)	見積もり（所要時間）
- 3	レイアウトの整備	本webサイト利用者にテーマとコンセプトを理解してもらうため。	本サイトのテーマや内容を理解して貰った上で、商品や記事をクリックしたくなるような外観を整える。	ファッションに興味が無い訳ではないが、積極的にオシャレをする事もない人。漠然と素敵で幸せになりたい人。	8
- 3	商品一覧表示機能	一目でどの様な商品があるのかを把握してもらうため。	一覧表示機能を使用し、商品画像、価格+αを一目で把握して貰う様にする。	そこまで興味はない状態で本サイトを訪れ、閲覧している人	8
- 3	ユーザー管理機能	ユーザーアカウント登録をし、商品購入やイベントへの参加を可能にするため。	商品を出品できる様にする。また商品の詳細画面を閲覧、商品を購入できる様にする。	本サイトに興味を持ち、コンテンツにも興味を持ってくれた人。	3
- 2	商品検索	ユーザーが簡単にデータ検索出来るようにする。	複数条件を指定した上で購入したい商品の検索を可能にする	"・商品は数点出品されていることが前提
  ・商品名/サイズ/商品状態/値段などの検索条件を指定する欄を儲ける・条件に該当する商品の検索結果のページで表示する"	5
- 2	商品購入機能	PAY.JPを利用した商品購入機能の実装方法を習得	購入したい商品をクリックしたら購入が完了する	"・商品は数点出品されていることが前提
・「商品購入ボタン」をクリックしたら、DB及びPAY.JPサイトに購入した商品情報が更新される
・購入済みの商品は、「購入ボタン」を押せないようにする"	8

# 洗い出した要件
- [![Image from Gyazo](https://i.gyazo.com/5406f453fa1451604d9992fa47949a04.jpg)](https://gyazo.com/5406f453fa1451604d9992fa47949a04)
- [![Image from Gyazo](https://i.gyazo.com/1bfbe10546f19482fcd300f7a4edaebf.jpg)](https://gyazo.com/1bfbe10546f19482fcd300f7a4edaebf)

# 実装予定の機能
- 商品検索機能
- 商品購入機能

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

