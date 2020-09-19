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
			if player.move == comp.move
				return "It is a draw"
			elsif WIN[player.move].include?(comp.move)
				return "#{player.name} is a winner!!!"
			elsif
				return "Computer wins"
			end 
		end
	end 
