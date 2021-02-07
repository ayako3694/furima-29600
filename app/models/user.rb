class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# バリデーションの設定(空の文字列を保存させない為と一意性制約)
validates :nick_name,               presence: true
validates :encrypted_password,     presence: true
validates :last_name,              presence: true
validates :first_name,             presence: true
validates :last_name_kana,         presence: true
validates :first_name_kana,        presence: true
validates :birth_date,             presence: true

# アソシエーション
has_many :items
has_many :buyers
end