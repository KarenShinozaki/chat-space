# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.5.0

* System dependencies

* Configuration

* Database creation

##usersテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null :false|
|name|text|null: false|

##Association
- belong_to :members
- has_many :groups
- has_many :groups,through: :members

##groupsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null :false|
|name|text|null :false|



##Association
- has_many :users,through: :members
- has_one :chats



##messageテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null :false|
|body|text|null :false|
|image|string||
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|


##Association

- belongs_to :group
- belongs_to :user

## membersテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null :false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
