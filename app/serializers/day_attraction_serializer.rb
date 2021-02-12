class DayAttractionSerializer < ActiveModel::Serializer
  belongs_to :day
  belongs_to :attraction
  attributes :id, :day_id, :attraction_id
end
