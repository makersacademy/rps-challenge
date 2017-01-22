require_relative 'computer'

class Game

attr_reader :player_1, :player_2

WIN_CHART=[["rock","scissors"],["rock","lizard"],
				["paper","rock"],["paper","spock"],
				["scissors","paper"],["scissors","lizard"],
				["spock","rock"],["spock","scissors"],
				["lizard","paper"],["lizard","spock"]]

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
		return draw if @compare[0] == @compare[1]
		WIN_CHART.include?(@compare) ? "#{@player_1.name} is the winner" : "#{@player_2.name} is the winner"
	end

	private 

	def user_turn
		@compare<<@player_1.choice
	end

	def computer_turn
		return @compare<<@player_2.choice if @player_2.is_a?(Player)
		@compare<<@player_2.play
	end

	def draw
		"It's a draw!"
	end

end