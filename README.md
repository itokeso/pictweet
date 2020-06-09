# README

# 概要
プログラミングスクールTECH::CAMPカリキュラムでの製作物です！<br>
画像と文字を投稿できるシンプルなサービスです。コメントも投稿する事ができ、コメント送信機能にはajaxを使用した非同期通信が出来るよう実装しています。

## アプリケーションの機能一覧
・ユーザー新規登録機能<br>
・ユーザーログイン・ログアウト機能<br>
・画像・ツイート作成機能<br>
.コメント機能<br>

## 使用技術一覧
|種別|名称|
|------|----|
|開発言語|Ruby(ver 2.5.1), jquery|
|フレームワーク|Ruby on Rails(ver 5.2.4.1)|
|マークアップ|HTML,CSS(Sass)|
|データベース|MYSQL|
  
# DEMO


# DB設計

##  usersテーブル  
|Column|Type|Options|
|------|----|-------|
|name |string|null: false|
|e-mail|string|null: false|
|password|string|null: false|
### Association
- has_many :tweets
- has_many :comments

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|null: false|
|name|string|---|
|text|string|null: false|
|comment_id|integer|null: false, foreign_key: true|
### Association
-belongs_to :user
-has_many :comments

##  commentsテーブル  
|Column|Type|Options|
|------|----|-------|
|text |string|------|
|user_id|integer|foreign_key: true|
|tweet_id|integer|foreign_key: true|
### Association
-belongs_to :user
-belongs_to :tweet



