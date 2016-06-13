class Turn
	
RULES = {
rock: {rock: :draw, paper: :lose, scissors: :win},
paper: {rock: :win, paper: :draw, scissors: :lose},
scissors: {rock: :lose, paper: :win, scissors: :draw}

}

	attr_reader :player_name, :player_object, :player2_object

	def initialize(options)
	@player_name = options["player_name"]
	@player_object = options["player_object"]
	@player2_object = options["player2_object"]
	end 

	def win?
		result == :win
	end 

	def lose?
		result == :lose
	end 
		
	def draw?
		result == :draw
	end 

private

	def result
		return if @player2_object.nil?
		RULES[@player_object][@player2_object]
	end 

end 