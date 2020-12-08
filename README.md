# README

## articleテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|url|string|null: false|

### Association




## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|first_answer|integer|null: false|
|second_answer|integer|null: false|
|third_answer|integer|null: false|

### Association
belongs_to: user



## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|encrypted_password|string|null: false|
|last_name|string|null: false|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|last_name_kana|string|null: false|
|building_name|string||



### Association
belongs_to: user




