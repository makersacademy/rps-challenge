class Player 
attr_reader :name, :choice
	def initialize(name)
		@name = name
	end 

	def move(move)
		@move = move
	end 

end 