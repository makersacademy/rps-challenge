class Comp 
attr_accessor :move
	def comp_move
		@move = ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample
	end
end 