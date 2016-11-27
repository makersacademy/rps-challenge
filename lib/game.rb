class Game

	attr_reader :player, :weapon

	@game = nil

	def initialize(player)
		@player = player
	end

	def self.create(player)
		@game = Game.new(player)
	end

	def self.instance
		@game
	end

	def choose_weapon(choice)
		@weapon = choice
	end

end