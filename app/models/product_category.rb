# == Schema Information
#
# Table name: product_categories
#
#  id            :bigint           not null, primary key
#  title         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  restaurant_id :bigint           not null
#
# Indexes
#
#  index_product_categories_on_restaurant_id  (restaurant_id)
#
# Foreign Keys
#
#  fk_rails_...  (restaurant_id => restaurants.id)
#
class ProductCategory < ApplicationRecord
  belongs_to :restaurant
  has_many :products

  validates_associated :restaurant
  validates :title, presence: true
end
