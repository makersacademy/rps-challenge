class Player 
attr_reader :name, :move
	def initialize(name)
		@name = name
	end 

	def name
		@name
	end

	def choice(move)
		@move
	end 
end 