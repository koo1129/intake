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
- has_many :results

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
|user_id|references|null: false,foreign_key: true|
### Association
- belongs_to :user
- has_many :therapies
- belongs_to :result

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

## resultsテーブル
|Column|Type|Options|
|------|----|-------|
|text|end||
|text|rifer||
|text|dorpout||
|user_id|references|null: false, foreign_key: true|
|client_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :client