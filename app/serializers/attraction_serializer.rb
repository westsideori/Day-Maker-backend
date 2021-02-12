class AttractionSerializer < ActiveModel::Serializer
  has_many :day_attractions
  has_many :days, through: :day_attractions
  attributes :id, :name, :location, :description, :category, :image
end
