require 'player'
require 'comp'

class Game 
	attr_reader :player, :comp
	WIN = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }

	def initialize(player, comp)
		@player = player
		@comp = comp
	end 

	def result(player, comp)
		if player.move(move) == comp.move
			"Draw"
		elsif WIN[player1.move(move)] == comp.move
			"#{player} you won!"
		else
			"Computer won!"
		end 
	end 

	def self.create(player,comp)
		@game = Game.new(player,comp)
	end 
	
	def self.instance
		@game
	end 
end 