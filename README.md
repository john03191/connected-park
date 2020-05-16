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

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|
|email|string|null: false, unique: true|
|image|text||
|password|string|null: false|

### Association
- has_many :parks, through: :parks_users
- has_many :parks
- has_many :messages

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|text||
|park_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :park

## parksテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|text|null: false|
|info|text|null: false|
|address|text|

### Association
- has_many :users, through: :groups_users
- has_many :parks_users
- has_many :messages


## parks_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|park_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :park
- belongs_to :user
