class Game
	attr_reader :computer_choice
	def initialize(playerChoice)
		@computer_choice = get_computer_choice
		@player_choice = playerChoice
	end

	def result
		return :tie if @computer_choice == @player_choice
		case @player_choice
		when 'rock'
			return @computer_choice == 'scissors' ? :victory : :defeat
		when 'paper'
			return @computer_choice == 'rock' ? :victory : :defeat
		when 'scissors'
			return @computer_choice == 'paper' ? :victory : :defeat
		end
	end 

	private
	def get_computer_choice
		["rock", "paper", "scissors"].sample
	end
end
 