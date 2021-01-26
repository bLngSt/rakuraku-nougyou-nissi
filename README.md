# らくらく農業日誌
ユーザー管理機能
予定の登録機能
登録した予定が表示されるカレンダー機能
作業内容の登録機能
登録した作業内容が表示されるカレンダー機能

優秀な農業の作業日誌は世の中にたくさんありますが、高齢者が多い業界で、高齢者向けに作られているアプリケーションが少ないので、パソコンを触ったこのがない人でも直感的にわかるようなアプリケーションを目指しています。

### Association
- has_many :items
- has_many :item_histories
# テーブル設計
## users テーブル
| Column              | Type       | Options                   |
| ------------------- | ---------- | ------------------------- |
| email               | string     | unique: false ,null:false |メール
| encrypted_password  | string     | null: false               |パスワード
| name                | string     | null: false               |ニックネーム
### Association
- has_many :schedule
- has_many :task

## schedules テーブル
| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user     | references | null: false ,foreign_key: true |ユーザー
| day      | references | null: false                    |日程
| work     | references | null: false                    |作業内容
| item     | references | null: false                    |作業道具
| place    | references |                                |場所
| memo     | text       |                                |メモ
### Association
- belongs_to :user
- has_one :task

## tasks テーブル
| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user     | references | null: false ,foreign_key: true |ユーザー
| day      | references | null: false                    |日程
| work     | references | null: false                    |作業内容
| item     | references | null: false                    |作業道具
| place    | references |                                |場所
| time     | references |                                |作業時間
| memo     | text       |                                |メモ
### Association
- belongs_to :user
- belongs_to :schedule

## works テーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |タイトル
### Association
- belongs_to :schedule
- belongs_to :task

## items テーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |タイトル
### Association
- belongs_to :schedule
- belongs_to :task

## places テーブル
| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| title  | string     | null: false                    |タイトル
### Association
- belongs_to :schedule
- belongs_to :task