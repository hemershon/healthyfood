# == Schema Information
#
# Table name: products
#
#  id                  :bigint           not null, primary key
#  description         :text
#  name                :string
#  price               :float
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  product_category_id :bigint           not null
#
# Indexes
#
#  index_products_on_product_category_id  (product_category_id)
#
# Foreign Keys
#
#  fk_rails_...  (product_category_id => product_categories.id)
#
FactoryBot.define do
  factory :product do
    name { "MyString" }
    description { "MyText" }
    price { 1.5 }
    product_category { nil }
  end
end
