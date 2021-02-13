class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# バリデーションの設定(空の文字列を保存させない為と一意性制約)
validates :nick_name,              presence: true
validates :password,               format: {with: /\A[a-zA-Z0-9]+\z/} # 半角英数字混合の正規表現
validates :encrypted_password,     presence: true
validates :last_name,              presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/ } # ユーザー本名全角の正規表現
validates :first_name,             presence: true, format: {with: /\A[ぁ-んァ-ン一-龥]/ } # ユーザー本名全角の正規表現
validates :last_name_kana,         presence: true, format: {with: /\A[ァ-ヶー－]+\z/ } # フリガナ全角の正規表現
validates :first_name_kana,        presence: true, format: {with: /\A[ァ-ヶー－]+\z/ } # フリガナ全角の正規表現
validates :birth_date,             presence: true


# アソシエーション
has_many :items
has_many :buyers
end