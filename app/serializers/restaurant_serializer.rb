class RestaurantSerializer < ActiveModel::Serializer
  has_many :day_restaurants
  has_many :days, through: :day_restaurants
  attributes :id, :name, :location, :description, :cuisine, :category
end
