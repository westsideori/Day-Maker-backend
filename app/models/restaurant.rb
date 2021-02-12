class Restaurant < ApplicationRecord
    has_many :day_restaurants
    has_many :days, through: :day_restaurants
end
