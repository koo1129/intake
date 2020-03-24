# intake DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: ture|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :clients
- has_many :therapies

## clientテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|sex|text||
|job|text||
|address|string||
|from|text||
|family|text||
|character|text||
|complaint|text||
|history|text||
|other|text||
|intake|date||
|photo|text||
|email|string||
|phone|integer||
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :therapies

## therapiesテーブル
|Column|Type|Options|
|------|----|-------|
|therapy|text|null: false|
|date|date|null: false|
|user_id|references|null: false, foreign_key: true|
|client_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :client
