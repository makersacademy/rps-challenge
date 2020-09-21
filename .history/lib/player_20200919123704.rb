class Player 
attr_accessor :name, :move
	def initialize(name)
		@name = name
		@move = nil
	end

	def choice(move)
		@move == move 
	end 
end 