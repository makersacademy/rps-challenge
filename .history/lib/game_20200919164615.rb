require './lib/player.rb'
require './lib/comp.rb'

class Game 
	attr_accessor :player, :comp

WIN = { 
	'rock' => ['lizard', 'scissors'],
	'paper' => ['rock', 'spock'],
	'scissors' => ['lizard', 'paper'],
	'lizard' => ['paper', 'spock'],
	'spock' => ['scissors', 'rock']
	}

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
			if WIN[@comp.move].include?(@player.move)
				return "Computer won"
			elsif WIN[@player.move].include?(@comp.move)
				"#{@player.name} is a winner!!!"
			elsif @player.move == @comp.move
				 return "It's a draw"
			end 
		end
	end 
