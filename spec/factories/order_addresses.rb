FactoryBot.define do
  factory :order_address do
    postal_code { '111-1111' }
    prefecture_id { 1 }
    city { '品川区' }
    house_number { '1-1' }
    building_number { 'ハイツ' }
    phone_number { '09012345678' }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
