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
require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
