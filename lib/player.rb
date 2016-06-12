class Player

	attr_reader :name

	def initialize(player)
		@name = player
	end

	def self.create(player)
		@player = Player.new(player)
	end

	def self.instance
		@player
	end

end
