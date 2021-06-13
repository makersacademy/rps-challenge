require_relative 'player'

class Game
	 attr_reader :player_1

	 def initialize(player_1)
		  @player_1 = player_1
   end

	 def robot
	   ["rock", "paper", "scissors"].sample
   end

	 def move
    @player_1.move
	 end

	 def hand
		  case move
		 when "rock"
			  rock_move
		 when "paper"
			  paper_move
		 when "scissors"
		 	 scissors_move
		 else
			  "Please make a move!"
		 end
	 end

	private

	 def rock_move
		  r_move = robot
		case r_move
		when "scissors"
			 player_won
		when "paper"
		  player_lost
		else
			 draw
		end
	 end

	 def paper_move
		  r_move = robot
		case r_move
		when "rock"
			 player_won
		when "scissors"
			 player_lost
		else
			 draw
		end
	 end

	 def scissors_move
		  r_move = robot
		case r_move
		when "paper"
			 player_won
		when "rock"
			 player_lost
		else
			 draw
		end
	 end

	 def draw
		  "This hand was a draw! Try again."
	 end

	 def player_won
		  "#{player_1.name} has won!"
	 end

	 def player_lost
	  	"#{player_1.name} has lost!"
	 end
end
