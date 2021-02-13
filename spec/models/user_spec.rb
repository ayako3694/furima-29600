require 'rails_helper'
RSpec.describe User, type: :model do

  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do

    it 'nicknameが空では登録できない' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "Nickname can't be blank"
    end

    it 'emailが空では登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "Email can't be blank"
    end

  # email 一意性制約のテスト ▼
    it "重複したemailが存在する場合登録できないこと" do
      @user = create(:user)
      another_@user = build(:user, email: user.email)
      another_@user.valid?
      expect(another_@user.errors[:email]).to include("はすでに存在します")
end

    it 'passwordが空では登録できない' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

  #パスワードは６文字以上であること

  #パスワードは半角英数字混合であること
  

  it 'passwordが存在してもpassword_confirmationが空では登録できない' do
    @user.password_confirmation = ''
    @user.valid?
    expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
  end

  

  # 本人情報確認のテスト ▼

    it 'last_nameが空では登録できない' do
      @user.last_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Last_name can't be blank"
    end

    it 'first_nameが空では登録できない' do
      @user.first_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First_name can't be blank"
    end

    it 'last_name_kanaが空では登録できない' do
      @user.last_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Last_name_kana can't be blank"
    end

    it 'first_name_kanaが空では登録できない' do
      @user.first_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("First_name_kana can't be blank"
    end

    it 'birth_dayが空では登録できない' do
      @user.birth_day = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Birth_day can't be blank")
    end


  # 本人確認名前全角入力のテスト ▼

     it 'first_nameが全角入力でなければ登録できないこと' do
     @user = build(:user, family_name: "ｱｲｳｴｵ")
     @user.valid?
     expect(@user.errors[:family_name]).to include("は不正な値です")
    end

     it 'last_nameが全角入力でなければ登録できないこと' do
     @user = build(:user, first_name: "ｱｲｳｴｵ")
     @user.valid?
     expect(@user.errors[:first_name]).to include("は不正な値です")
     end

  # 本人確認カタカナ全角入力のテスト ▼

     it 'first_name_kanaが全角カタカナでなければ登録できないこと' do
     @user = build(:user, family_name_kana: "あいうえお")
     @user.valid?
     expect(@user.errors[:family_name_kana]).to include("は不正な値です")
     end

     it 'last_name_kanaが全角カタカナでなければ登録できないこと' do
     @user = build(:user, first_name_kana: "あいうえお")
     @user.valid?
     expect(@user.errors[:first_name_kana]).to include("は不正な値です")
     end
  end
end
