
class Game

	WEAPONS = [:Rock, :Paper, :Scissors]

	attr_reader :player_choice, :computer_choice

	def initialize(player_choice, computer_choice)
		@player_choice = player_choice
		@computer_choice = computer_choice
	end

	def result
		if @player_choice.to_s == @computer_choice.to_s
			return "Draw!"
		else
			return "Not a draw"
		end
	end


end
