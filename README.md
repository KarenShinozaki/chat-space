# README

* デフォルトで実装されるid、それからdeviseにて実装されるmail,passwordは省略しています。　


## usersテーブル
|Column|Type|Options|index|
|------|----|-------|-----|
|name|string|null: false|○|


### Association
- has_many :members
- has_many :groups,through: :members
- has_many :messages

## groupsテーブル
|Column|Type|Options|index|
|------|----|-------|-----|
|name|string|null :false|○|


### Association
- has_many :users,through: :members
- has_many :messages
- has_many :members


## messageテーブル
|Column|Type|Options|index|
|------|----|-------|-----|
|body|text|  |×|
|image|string| |×|
|group_id|integer|null: false, foreign_key: true|×|
|user_id|integer|null: false, foreign_key: true|×|


### Association

- belongs_to :group
- belongs_to :user


## membersテーブル
|Column|Type|Options|index|
|------|----|-------|-----|
|user_id|integer|null: false, foreign_key: true|○|
|group_id|integer|null: false, foreign_key: true|○|


### Association
- belongs_to :group
- belongs_to :user


