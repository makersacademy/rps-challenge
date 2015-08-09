class Player

	attr_accessor :options

	def initialize
		@options = ["rock","paper","scissors","spock","lizard"]
	end

def pick object
	fail "Must pick rock, paper, scissors, spock or lizard" unless @options.include?(object)
	component = computer
	person = (options.index(object)) + 1
	who_has_won(component,person)
end

def computer
	rand(1..5)
end

def who_has_won (component, person)
	if component == person
		"It's a tie!"
	elsif component % 2 == person % 2
		component < person ? "You lose!" : "You win!"
	elsif component % 2 != person % 2
		component > person ? "You lose!" : "You win!"
	end
end

end