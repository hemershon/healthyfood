FactoryBot.define do
  factory :restaurant do
    name { "MyString" }
    description { "MyText" }
    status { 1 }
    delivery_tax { 1.5 }
    state { "MyString" }
    city { "MyString" }
    street { "MyString" }
    neighborhood { "MyString" }
    number { "MyString" }
    complement { "MyString" }
    reference { "MyString" }
    cep { "MyString" }
    latitude { 1.5 }
    longitude { 1.5 }
    category { nil }
  end
end
