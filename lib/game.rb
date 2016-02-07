require './lib/player.rb'

class Game

ROCK_RULES = {:scissors => :win, 
:paper => :lose, :rock => :draw}
PAPER_RULES = {:scissors => :lose,
:paper => :draw, :rock => :win}
SCISSORS_RULES = {:scissors => :draw, 
:paper => :win, :rock => :lose}

attr_reader :weapons, :player

	def initialize(player)
		@player = player
		@weapons = ["Rock", "Paper", "Scissors"]
	end 

	def opponent
 	@opponent = weapons.sample
	end

	def result
		if  player_choice == "Rock"
		ROCK_RULES[computer]
		elsif player_choice == "Paper"
		PAPER_RULES[computer]
		else player_choice == "Scissors"
		SCISSORS_RULES[computer]
		end
	end


private 

	def player_choice
	player.selection
	end	

	def computer 
	@opponent.downcase.to_sym
	end

end




