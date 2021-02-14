class Day < ApplicationRecord
    belongs_to :user
    has_many :day_attractions
    has_many :attractions, through: :day_attractions
    has_many :day_restaurants
    has_many :restaurants, through: :day_restaurants

end
