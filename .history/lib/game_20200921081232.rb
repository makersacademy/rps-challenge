require './lib/player.rb'
#require './lib/comp.rb'

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

	def bot
		@bot_move = ["rock", "paper", "scissors", "lizard", "spock"].sample
	end

	def result(player_move)
		if WIN[(@player_move).to_sym].include?(@bot_move)
			return "#{@player.name} is a winner!!!"
		elsif  @player.move == @comp_move
			return "It's a draw"
		else
			return "Computer won!"
		end
	end
end 
