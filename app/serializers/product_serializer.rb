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
class ProductSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :name, :description, :price, :image_url

  def image_url
    rails_blob_url(object.image)
  end
end
