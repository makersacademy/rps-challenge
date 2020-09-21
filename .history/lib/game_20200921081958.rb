require './lib/player.rb'


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
		if WIN[(@player.move).to_sym].include?(@bot_move)
			return "#{@player.name} is a winner!!!"
		elsif  @player.move == @bot_move
			return "It's a draw"
		else
			return "Computer won!"
		end
	end
end 
