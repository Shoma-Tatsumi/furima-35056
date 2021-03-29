FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6, mix_case: true)}
    password_confirmation {password}
    first_name            {Gimei.first.kanji}
    last_name             {Gimei.last.kanji}
    first_name_reading    {Gimei.first.katakana}
    last_name_reading     {Gimei.last.katakana}
    birthday              {Faker::Date.between(from: '1930-01-01', to: '2016-12-31')}
  end
end
