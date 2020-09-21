require './lib/player.rb'
require './lib/comp.rb'

class Game 

	attr_accessor :player, :comp

	WIN = {
		rock: %w(lizard scissors),
		paper: %w(rock spock),
		scissors: %w(paper lizard),
		lizard: %w(paper spock),
		spock: %w(scissors rock)
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
		if WIN[(@player.move).to_sym].include?(@comp.move)
			return "#{@player.name} is a winner!!!"
		elsif  @player.move == @comp.move
			return "It's a draw"
		elsif WIN[(@comp.move).to_sym].incude?(@player.move)
			return "Computer won!"
		end
	end
end 
