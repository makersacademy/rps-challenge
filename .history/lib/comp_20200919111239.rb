class Comp 
attr_reader :move
	def move
		@move = ['rock', 'paper', 'scissors'].rand
	end
end 