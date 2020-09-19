require './lib/player.rb'
require './lib/comp.rb'

class Game 

	attr_accessor :player, :comp

WIN = { 
	'rock' => %w[lizard scissors],
	'paper' => %w[rock spock],
	'scissors' => %w[ lizard paper],
	'lizard' => %w[ paper spock],
	'spock' => %w[scissors rock]
	}

	def initialize(player)
		@player = player
		@comp = ["rock", "paper", "scissors", "lizard", "spock"].sample
	end 

	def self.create(player)
  	@game = Game.new(player)
	end

		def self.instance
  		@game
		end

		def result
			case outcome
			when  WIN[@player.move].include?(@comp)
				return "#{@player.name} is a winner!!!"
			when WIN[@comp].include?(@player.move)
				return "Computer won!"
			when @player.move == @comp.move
				return "It's a draw"
			end 
		end
	end 
