require './lib/player.rb'
require './lib/comp.rb'

class Game 

	attr_accessor :player, :comp_move

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

	def comp_move
		comp_move =	['rock', 'paper', 'scissors', 'lizard', 'spock'].sample
	end 

	def result(move)
		if WIN[(move).to_sym].include?(@comp_move)
			return "You are a winner!!!"
		elsif  move == @comp_move
			return "It's a draw"
		elsif WIN[(@comp_move).to_sym].include?(move)
			return "Computer won!"
		end
	end
end 
