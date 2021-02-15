class DayRestaurantSerializer < ActiveModel::Serializer
  belongs_to :day
  belongs_to :restaurant
  attributes :id, :day_id, :restaurant_id, :restaurant
end
