class Game < ApplicationRecord
	has_many :reviews
	has_many :users, through: :reviews
	has_many :console_games
	has_many :consoles, through: :console_games
	accepts_nested_attributes_for :reviews
	validates :release_year, numericality: {greater_than: 1949, message: "release year must be 1950 or more recent"}
	validates :release_year, numericality: {less_than_or_equal_to: 2018, message: "release year must be current year or less"}
	validates :name, :release_year, presence: true
	validates :name, uniqueness: true
	scope :released_before, ->(y) { where("release_year <= ?", y) }
	
	def average_rating
		sum = 0
			self.reviews.each do |r|
				sum = sum + r.rating
			end
		sum/self.reviews.count if self.reviews.count > 0
	end

	    def slug
     		 name.downcase.gsub(" ","-")
	    end

end
