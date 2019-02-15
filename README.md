# README

* デフォルトで実装されるid、それからdeviseにて実装されるであろうmail,passwordは省略しています。　


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


## Association
- belong_to :member
- has_many :groups,through: :members
- has_many :messages

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null :false|


## Association
- has_many :users,through: :members
- has_many :messages
- belongs_to :member


## messageテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|


## Association

- belongs_to :group
- belongs_to :user


## membersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|


### Association
- belongs_to :group
- belongs_to :user


