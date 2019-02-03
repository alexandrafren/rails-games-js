class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :content
  belongs_to :game
  belongs_to :user
end
