require './lib/player.rb'
require './lib/comp.rb'

class Game 
	attr_reader :player, :comp

	def initialize(player)
		@player = player
		@comp = Computer.new
	end 

	def result(player, comp)
		if player.move == comp.move
			return "It's a draw"
		elsif WIN[player.move] == comp.move
			return "#{player}, you won!"
		else
			return"Computer won!"
		end 
	end 

	def self.create(player)
		@game = Game.new(player)
	end 
	
	def self.instance
		@game
	end 
end 