# README


##usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


##Association
- belong_to :members
- has_many :groups
- has_many :groups,through: :UserGroup

##groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null :false|


##Association
- has_many :users,through: :members
- has_one :UserGroup


##UserGroupテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|


##Association

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


