class Computer
	attr_reader :choice

	def computer_choice
		@choice = ["rock", "paper", "scissors"].sample
	end
end