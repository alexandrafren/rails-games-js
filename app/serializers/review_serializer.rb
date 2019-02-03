class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :content, :game_id, :user_id
  belongs_to :game
  belongs_to :user
end
