class Player 
attr_accessor :name, :move
	def initialize(name)
		@name = name
	end

	def choice(move)
		@move == move 
	end 
end 