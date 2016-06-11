require_relative 'game'

class ComputerPlayer

	attr_reader :points

def initialize
	@points = 0
end

def name
	"Computer"
end

def add_points
	@points += Game::POINT_INCREMENT
end

end
