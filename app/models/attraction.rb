class Attraction < ApplicationRecord
    has_many :day_attractions
    has_many :days, through: :day_attractions
end
