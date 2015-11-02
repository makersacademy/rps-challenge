require_relative 'computer'

class Player

	attr_reader :name, :move, :score

	def initialize (name, computer = Computer.new) 
		@name = name.capitalize
		@computer = computer
		@move = nil
		@score = 0
	end

	def log move
		move == :comp ? @move = @computer.choice : @move = move
	end

	def win
		@score += 1
	end

end
