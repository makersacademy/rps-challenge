require './lib/player.rb'
require './lib/comp.rb'

class Game 
	attr_accessor :player, :comp

WIN = { 
	'rock' => 'lizard',
	'rock' =>  'scissors',
	'paper' => 'rock',
	'paper' => 'spock',
	'scissors' => 'lizard',
	'scissors' => 'paper',
	'lizard' => 'paper',
	'lizard' => 'spock',
	'spock' => 'scissors',
	'spock' => 'rock'
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
				return "It's a draw"
			elsif WIN[player.move].include?(comp.move)
				return "#{player.name} is a winner!!!"
			else
				return "Computer won!"
			end 
		end
	end 
