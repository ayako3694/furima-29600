FactoryBot.define do

  factory :user do
    nickname              {"tarou"}
    email                 {"sample@gmail.com"}
    password              {"123456"}
    encrypted_password    {"123456"}
    last_name             {"山田"}
    first_name            {"太郎"}
    last_name_kana        {"ヤマダ"}
    first_name_kana       {"タロウ"}
    birth_day             {"2000-01-01"}
  end
end