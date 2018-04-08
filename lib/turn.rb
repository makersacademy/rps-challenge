class Turn 

	attr_reader :player_name, :player_shape, :computer_shape

	def initialize(options)
		@player_name = options["player_name"]
		@player_shape = options["player_shape"]
		@computer_shape = options["computer_shape"]
	end
end		
