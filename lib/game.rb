class Game
	attr_reader :computer_choice
	def initialize(playerChoice, lizardspock)
		@computer_choice = get_computer_choice
		@player_choice = playerChoice
		@lizardspock = lizardspock
	end

	def result
		return :tie if @computer_choice == @player_choice
		case @player_choice
		when 'rock'
			return @computer_choice == 'scissors' || @computer_choice == 'lizard' ? :victory : :defeat
		when 'paper'
			return @computer_choice == 'rock' || @computer_choice == 'spock' ? :victory : :defeat
		when 'scissors'
			return @computer_choice == 'paper' || @computer_choice == 'lizard' ? :victory : :defeat
		when 'lizard'
			return @computer_choice == 'spock' || @computer_choice == 'paper' ? :victory : :defeat
		when 'spock'
			return @computer_choice == 'scissors' || @computer_choice == 'rock' ? :victory : :defeat
		end
	end 

	private
	def get_computer_choice
		return @lizardspock ? ["rock", "paper", "scissors", "lizard", "spock"].sample : ["rock", "paper", "scissors"].sample
	end
end
 