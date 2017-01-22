require_relative 'computer'

class Game

attr_reader :player_1, :player_2

WIN_CHART=[["rock","scissors"],["paper","rock"],["scissors","paper"]]

	def initialize(player_1, player_2=Computer.new)
		@player_1 = player_1
		@player_2 = player_2
		@compare = []
	end

	def self.create(player_1, player_2=Computer.new)
  		@game = Game.new(player_1, player_2)
	end

	def self.instance
		@game
	end

	def play		
		user_turn
		computer_turn
	end

	def check
		return draw if @compare[0] == @compare[1]
		WIN_CHART.include?(@compare) ? win : lose
	end

	private 

	def user_turn
		@compare<<@player_1.choice
	end

	def computer_turn
		@compare<<@player_2.play
	end

	def win
		"You win!"
	end

	def lose
		"You lose"
	end

	def draw
		"It's a draw"
	end

end