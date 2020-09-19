require './lib/player.rb'
require './lib/comp.rb'

class Game 
	attr_accessor :player, :comp

WIN = { rock: ["lizard", "scissors"],
                  paper: ["rock", "spock"],
                  scissors: ["paper", "lizard"],
                  lizard: ["paper", "spock"],
                  spock: ["scissors", "rock"] }

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
				"It's a draw"
			elsif WIN[(player.move).to_sym].include?(comp.move)
				"#{player.name} is a winner!!!"
			elsif WIN[(comp.move).to_sym].include?(player.move)
				"Computer won!"
			end 
		end
	end 
