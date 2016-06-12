require_relative 'game'

class Player 

	attr_reader :name, :points

	def initialize(name)
		@name = name
		@points = 0
	end

	def add_points
		@points += Game::POINT_INCREMENT
	end
	
end