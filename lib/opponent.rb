class Opponent
	attr_accessor :choice
	def initialize
		@choice = nil
	end

	def choose
		@choice = ["rock","paper","scissors","lizard","spock"].sample
	end
end