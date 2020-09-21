class Comp 
attr_accessor :choice
	def move
		@choice = ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample
	end
end 