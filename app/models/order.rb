# == Schema Information
#
# Table name: orders
#
#  id            :bigint           not null, primary key
#  address       :string
#  name          :string
#  phone_number  :string
#  status        :integer          default("waiting")
#  total_value   :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  restaurant_id :bigint           not null
#
# Indexes
#
#  index_orders_on_restaurant_id  (restaurant_id)
#
# Foreign Keys
#
#  fk_rails_...  (restaurant_id => restaurants.id)
#
class Order < ApplicationRecord
  before_validation :set_price 
  belongs_to :restaurant
  has_many :order_products

  validates :name, presence: true 
  validates :phone_number, presence: true
  validates :total_value, presence: true

  enum status: { waiting: 0, delivered: 1 }
  
  accepts_nested_attributes_for :order_products, allow_destroy: true

  private 

  def set_price
    @final_price = 0
    order_products.each do |order_products|
      product = Product.find order_products.product_id
      @final_price += order_product.quantity * product.price 
    end
    self.total_value = @final_price
  end
end
