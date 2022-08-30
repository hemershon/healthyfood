FactoryBot.define do
  factory :order do
    name { "MyString" }
    phone_number { "MyString" }
    total_value { 1.5 }
    address { "MyString" }
    status { 1 }
    restaurant { nil }
  end
end
