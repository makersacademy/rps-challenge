class Rps

	attr_accessor :content

	def initialize
		@content = 'rock'
	end

	def change_to_paper
		@content = 'paper'
	end

	def change_to_scissors
		@content = 'scissors'
	end

	def change_to_rock
		@content = 'rock'
	end

end