class Review < ApplicationRecord
	belongs_to :game
	belongs_to :user
	validates :content, length: {in: 1..200, message: "reviews must be less than 200 charecters"}
	validates :rating, numericality: {only_integer: true, message: "rating must be an integer between 1 and 5", greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
	validates :rating, presence: true
end
