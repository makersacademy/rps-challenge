require './lib/player.rb'
require './lib/comp.rb'

class Game 

	attr_accessor :player, :comp

	WIN = {
		rock: ["lizard", "scissors"],
		paper: ["rock", "spock"],
		scissors: ["paper", "lizard"],
		lizard: ["paper", "spock"],
		spock: ["scissors", "rock"]
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

	def result(move1, move2)
		if WIN[(move1).to_sym].include?(move2)
			return "You are a winner!!!"
		elsif  move1 == move2
			return "It's a draw"
		elsif WIN[(move2).to_sym].include?(move1)
			return "Computer won!"
		end
	end
end 
