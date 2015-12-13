require_relative 'player'
require_relative 'computer'

class Game

	WEAPONS = [:Rock, :Paper, :Scissors]
	
	attr_reader :player, :computer 

	def initialize(player, computer)
		@player = player
		@computer = computer
	end

	def player_result
		p $game.player.choice
	end

	def computer_result
		p $game.computer.computer_choice
	end

		

	
end