require './lib/player.rb'
require './lib/comp.rb'

class Game 
	attr_accessor :player, :comp

WIN = { 
	'rock' => %w(lizard scissors),
	'paper' => %w(rock spock),
	'scissors' => %w(lizard paper),
	'lizard' => %w(paper spock),
	'spock' => %w(scissors rock)
	}.freeze

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
			if WIN.has_key?([comp.move, player.move])
				return "Computer won!"
			elsif WIN.has_key?([player.move, comp.move])
				return "#{player.name} is a winner!!!"
			else
				return "It's a draw!"
			end 
		end
	end 
