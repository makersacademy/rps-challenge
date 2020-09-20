require './lib/player.rb'
require './lib/comp.rb'

class Game 

	attr_accessor :player, :comp

	WIN = {
		rock: %w(lizard scissors),
		paper: %w(rock spock),
		scissors: %W(paper lizard),
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
		case result
		when WIN[(@player.move).to_sym].include?(@comp.move)
			return "#{@player.name} is a winner!!!"
		when (@player.move).to_sym == (@comp.move).to_sym
			return "It's a draw"
		when WIN[(@comp.move).to_sym].include?(@player.move)
			return "Computer won!"
		end
	end
end 
