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
class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :products 
end
