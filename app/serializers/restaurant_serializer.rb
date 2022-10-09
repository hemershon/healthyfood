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
class RestaurantSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :description, :review, :status, :delivery_tax, :state,
             :city, :street, :neighborhood, :number, :complement,
             :references, :cep, :image_url, :category_title
  has_many :product_categories, if: -> { @instance_options[:product_categories]}

  def image_url
    rails_blob_url(object.image)
  end

  def review
    object.reviews&.average(:value)
  end

  def category_title
    "cozinha #{object.category&.title"
  end
end
