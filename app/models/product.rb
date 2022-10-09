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
class Product < ApplicationRecord
  has_one_attached :image
  belongs_to :product_category
  has_many :order_products

  validates_associated :product_category
  validates :name, presence: true
  validates :price, presence: true
end
