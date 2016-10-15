class Opponent
	attr_accessor :choice, :name
	def initialize
		@choice = nil
		@name = "Opponent"
	end

	def choose
		@choice = ["rock","paper","scissors","lizard","spock"].sample
	end
end