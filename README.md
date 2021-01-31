# furima-29600 テーブル設計

## users テーブル

| Column             | Type   | Options     |
| -------------------| ------ | ----------- |
| nick_name          | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birth date         | date   | null: false |

### Association

- has_many :items
- has_many :buyers


## items テーブル

| Column        | Type       | Options     |
| --------------|------------|--------------------------------|
| name          | string     | null: false                    |
| info          | string     | null: false                    |
| category_id   | integer    | null: false                    |
| condition_id  | string     | null: false                    |
| charge_id     | string     | null: false                    |
| area_id       | string     | null: false                    |
| daystoship_id | string     | null: false                    |
| price         | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :buyers



## buyers テーブル

| Column              | Type       | Options                        |
| --------------------| ---------- | ------------------------------ |
| item                | references | null: false, foreign_key: true |
| user                | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :adress


## adress テーブル

| Column        | Type   | Options     |
| ------------- | ------ | ----------- |
| postal_cade   | string | null: false |
| prefectures   | string | null: false |
| municipality  | string | null: false |
| address       | string | null: false |
| building_name | string |             |
| phone_number  | string | null: false |

### Association
- belongs_to :buyer
