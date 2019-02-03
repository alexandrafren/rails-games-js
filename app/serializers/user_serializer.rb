class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :reviews
  has_many :games, through: :reviews
end
