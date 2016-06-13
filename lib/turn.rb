class Turn
	
	attr_reader :player_name
	
	def initialize(options)
	@player_name = options["player_name"]
	@player_object = options["player_object"]
	@player2_object = options["player2_object"]
	end 

end 