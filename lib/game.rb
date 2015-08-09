require_relative '../lib/player'

class Game 
	attr_reader :player_1, :player_2, :turn 

	def initialize player_1, player_2
		@player_1 = player_1
		@player_2 = player_2
	end 

	def winner
		if @player_1.chosen_object == @player_2.chosen_object
			"It's a tie!"
		elsif (@player_1.chosen_object == "Rock" && @player_2.chosen_object == "Scissors") || (@player_1.chosen_object == "Paper" && @player_2.chosen_object == "Rock") || (@player_1.chosen_object == "Scissors" && @player_2.chosen_object == "Paper")
      "#{@player_1.name}, you win!"
    else
      "#{@player_2.name}, you win!"
    end
	end 
end 