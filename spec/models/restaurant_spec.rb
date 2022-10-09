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
require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
