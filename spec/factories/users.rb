FactoryBot.define do
  factory :user do
    nickname              { 'test' }
    email                 { Faker::Internet.free_email }
    password              { 'test01' }
    password_confirmation { password }
    last_name             { '試験' }
    first_name            { '太朗' }
    last_name_reading     { 'シケン' }
    first_name_reading    { 'タロウ' }
    birthday              { '2010-12-31' }
  end
end
