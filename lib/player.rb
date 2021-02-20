require_relative 'game'

class Player
	attr_reader :name, :move
	
	def initialize(name)
		@name = name
	end

	def play(move)
		@move = move
	end
end