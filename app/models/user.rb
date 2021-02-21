class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

# バリデーションの設定(空の文字列を保存させない為と一意性制約)

  with_options presence: true do
    validates :nick_name
    validates :birth_date
    
    with_options format: {with: /\A[ぁ-んァ-ン一-龥々]+\z/ } do   # ユーザー本名全角の正規表現
      validates :last_name
      validates :first_name
    end

    with_options format: {with: /\A[ァ-ンー－]+\z/ } do   # フリガナ全角の正規表現
      validates :last_name_kana
      validates :first_name_kana
    end
    
  end
  validates :password,format: {with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i, message: "半角英数字混合で入力してください"} # 半角英数字混合の正規表現

  # アソシエーション
  has_many :items
  has_many :buyers
end