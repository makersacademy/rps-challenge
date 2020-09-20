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
		@comp = Comp.new
	end 

	def self.create(player)
  	@game = Game.new(player)
	end

		def self.instance
  		@game
		end

		def result
			if @player.move == @comp.move
				return "It's a draw"
			elsif @player.move == "rock" && (@comp.move == "lizard" || @comp.move == "scissors")
				return "#{@player.name} is a winner!!!"
			elsif @player.move == "paper" && (@comp.move == "rock" || @comp.move == 'spock')
				return "#{@player.name} is a winner!!!"
			elsif @player.move == 'scissors' && (@comp.move == 'lizard' || @comp.move == 'paper')
				return "#{@player.name} is a winner!!!"
			elsif @player.move == 'lizaed' && (@comp.move == 'paper' || @comp.move =='spock')
				return "#{@player.name} is a winner!!!"
			elsif @player.move == 'spock' && (@comp.move == 'scissors' || @comp.move == 'rock')
				return "#{@player.name} is a winner!!!"
			else
				return "Computer won!"
			end 
		end
	end 
