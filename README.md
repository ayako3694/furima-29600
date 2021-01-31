# furima-29600 テーブル設計

## users テーブル

| Column     | Type   | Options     |
| -----------| ------ | ----------- |
| nick name  | string | null: false |
| email      | string | null: false |
| password   | string | null: false |
| last name  | string | null: false |
| first name | string | null: false |
| birth date | string | null: false |




## Product テーブル

| Column     | Type   | Options     |
| -----------| ------ | ----------- |
| images     | string | null: false |
| name       | string | null: false |
| info       | string | null: false |
| category   | string | null: false |
| condition  | string | null: false |
| charges    | string | null: false |
| area       | string | null: false |
| daystoship | string | null: false |
| price      | string | null: false |
| commission | string | null: false |
| profit     | string | null: false |

## buyers テーブル

| Column              | Type       | Options                        |
| --------------------| ---------- | ------------------------------ |
| Purchase details    | string     | null: false                    |
| payment             | string     | null: false                    |
| card-number         | references | null: false, foreign_key: true |
| expration-date      | references | null: false, foreign_key: true |
| security-code       | references | null: false, foreign_key: true |

## adress テーブル

| Column        | Type   | Options     |
| ------------- | ------ | ----------- |
| postal cade   | string | null: false |
| prefectures   | string | null: false |
| municipality  | string | null: false |
| address       | string | null: false |
| building name | string | null: false |
| phone number  | string | null: false |