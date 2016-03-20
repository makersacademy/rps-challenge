class Player

	attr_reader :name, :move

	def initialize name
		@name = name
	end

	def make_move(player_choice)
		@move = player_choice
	end
end