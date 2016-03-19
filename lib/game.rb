class Game

	attr_reader :player, :game

	def initialize player
		@player = player
	end

	def self.create player
		@game = Game.new player
	end

	def self.instance
		@game
	end
end 