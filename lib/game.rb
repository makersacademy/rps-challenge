require_relative 'log'
require_relative 'player'

class Game

 	MOVES = ['rock', 'paper', 'scissors']

	attr_reader :players

	def initialize(player1, player2 = Player.new('Computer'))
		@players = [player1, player2]
	end

	def choose(move)
		player1_wins
	end

	def player1
		@players.first
	end

	def player2
		@players.last
	end

	def log
		@log || Log.new(player1)
	end

	private

	def ties
		log.ties
	end

	def player1_wins
		player1.win
	end

	def player2_wins
		player2.win
	end
end
