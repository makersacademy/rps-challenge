class Comp 
attr_accessor :move
	def move_choice
		@move = ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample
	end
end 