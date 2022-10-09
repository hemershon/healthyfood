# == Schema Information
#
# Table name: reviews
#
#  id            :bigint           not null, primary key
#  value         :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  restaurant_id :bigint           not null
#
# Indexes
#
#  index_reviews_on_restaurant_id  (restaurant_id)
#
# Foreign Keys
#
#  fk_rails_...  (restaurant_id => restaurants.id)
#
FactoryBot.define do
  factory :review do
    value { 1 }
    restaurant { nil }
  end
end
