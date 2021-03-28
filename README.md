# テーブル設計

## usersテーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| password           | string  | null: false |
| first_name         | string  | null: false |
| last_name          | string  | null: false |
| first_name_reading | string  | null: false |
| last_name_reading  | string  | null: false |
| year               | integer | null: false |
| month              | integer | null: false |
| day                | integer | null: false |

### Association
- has_many :items
- has_many :comments

## itemsテーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | text       | null: false                    |
| description   | text       | null: false                    |
| category      | integer    | null: false                    |
| condition     | integer    | null: false                    |
| delivery_fee  | integer    | null: false                    |
| shipping_area | integer    | null: false                    |
| days_to_ship  | integer    | null: false                    |
| price         | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments
- has_one: order

## commentsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item

## ordersテーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| postal_code     | string     | null: false                    |
| prefecture      | integer    | null: false                    |
| city            | string     | null: false                    |
| house_number    | string     | null: false                    |
| building_number | string     |                                |
| phone_number    | integer    | null: false                    |
| item            | references | null: false, foreign_key: true |

### Association
- belongs_to :item
