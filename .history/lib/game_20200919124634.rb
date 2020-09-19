require './lib/player.rb'
require './lib/comp.rb'

class Game 
	attr_accessor :player, :comp

	def initialize(player)
		@player = player
		@comp = Comp.new
	end 

	def self.create(player)
  	@game = Game.new(player)
	end

		def self.instance
  		@game
		end

		def result
			if player.move == comp.move
				return "It's a draw"
			elsif win?
				return "You won!!!"
			else
				return"Computer won!"
			end 
		end

		def win?
			@player.move == 'rock' && comp.move == 'scissors' || @player.move == 'paper' && comp.move == 'rock' || @player.move == 'scissors' && comp.move == 'paper'
		end

	end 
