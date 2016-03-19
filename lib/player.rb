class Player

	attr_reader :name, :move

	def initialize name
		@name = name
	end

	def move(player_choice)
		@move = player_choice
	end
end