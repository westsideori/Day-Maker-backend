class Attraction < ApplicationRecord
    has_many :day_attractions
    has_many :days, through: :day_attractions

    # def self.get_unique_attraction
    #     Attraction.all.sample.id
    # end
end
