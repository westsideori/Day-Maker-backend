class UserSerializer < ActiveModel::Serializer
  has_many :days
  attributes :id, :name, :username, :password_digest, :days
end
