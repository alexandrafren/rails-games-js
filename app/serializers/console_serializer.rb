class ConsoleSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :console_games
  has_many :consoles, through: :console_games
end
