class Opponent
	attr_accessor :choice
	def initialize
		@choice = nil
	end

	def choose
		@choice = ["rock","paper","scissors"].sample
	end
end