# らくらく農業日誌
ユーザー管理機能
予定の登録機能
登録した予定が表示されるカレンダー機能
優秀な農業の作業日誌は世の中にたくさんありますが、高齢者が多い業界で、高齢者向けに作られているアプリケーションが少ないので、パソコンを触ったこのがない人でも直感的にわかるようなアプリケーションを目指しています。
# テーブル設計
## users テーブル
| Column              | Type       | Options                   |
| ------------------- | ---------- | ------------------------- |
| email               | string     | unique: false ,null:false |
| encrypted_password  | string     | null: false               |
| name                | string     | null: false               |
### Association
- has_many :schedule

## schedules テーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| start_time | references | null: false                    |
| work       | references | null: false                    |
| item       | references |                                |
| place      | references |                                |
| memo       | text       |                                |
### Association
- belongs_to :user