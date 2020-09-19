class Comp 
attr_reader : @move
	def move
		@move = [:rock, :paper, :scissors].sample
	end
end 