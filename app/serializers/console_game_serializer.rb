class ConsoleGameSerializer < ActiveModel::Serializer
   belongs_to :console
   belongs_to :game
  attributes :id
end
