FactoryBot.define do
  factory :order_product do
    quantity { 1 }
    comment { "MyText" }
    order { nil }
    product { nil }
  end
end
