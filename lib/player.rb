require_relative 'game'

class Player

	attr_reader :name, :score

	def initialize(name)
		@name = name
		@score = 0
	end

	def win
		@score += 1
	end
end
