
class Computer
	attr_reader :choices

	def initialize
		@choices = ["Rock", "Paper", "Scissors"]
	end

	def choice 
		@choices.sample
	end

end