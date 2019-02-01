class Console < ApplicationRecord
	has_many :console_games
	has_many :consoles, through: :console_games
end
