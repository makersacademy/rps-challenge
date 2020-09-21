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
			a = %w(scissor paper rock lizard spock)
			j = a.rotate(a.index player.move).index comp.move
			j < 1 ? "Draw!" : "#{j.odd? ? "#{player.name}" : "#{comp.name}"}"" won!"
		end 
	end 
