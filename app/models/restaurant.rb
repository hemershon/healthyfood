# == Schema Information
#
# Table name: restaurants
#
#  id           :bigint           not null, primary key
#  cep          :string
#  city         :string
#  complement   :string
#  delivery_tax :float
#  description  :text
#  latitude     :float
#  longitude    :float
#  name         :string
#  neighborhood :string
#  number       :string
#  reference    :string
#  state        :string
#  status       :integer
#  street       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category_id  :bigint           not null
#
# Indexes
#
#  index_restaurants_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
class Restaurant < ApplicationRecord
  belongs_to :category
  has_many :product_categories
  has_many :orders 
  has_many :reviews

  validates_associated :category
  validates :name, presence: true
  validates :status, presence: true
  validates :delivery_tax, presence: true
  validates :city, presence: true
  validates :street, presence:true

  enum status: { closed: 0, open: 1 }

end
