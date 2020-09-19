require './lib/player.rb'
require './lib/comp.rb'

class Game 
	attr_reader :player, :comp
	WIN = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }

	def initialize(player, comp)
		@player = player
		@comp = comp
	end 

	def result(player, comp)
		if player.move == comp.move
			"It's a draw"
		elsif WIN[player.move] == comp.move
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