class Game

	attr_reader :player, :computer

	def initialize(player, computer)
		@player = player
		@computer = computer
	end

	def winner#(player, computer) crearia un objeto game metiendo dos args player 1 y computer y se analizaria el resultado
		if @player == :Rock && @computer == :Paper
			@computer
		elsif @player == :Rock && @computer == :Scissors
			@player
		elsif @player == :Paper && @computer == :Rock
			@player
		elsif @player == :Paper && @computer == :Scissors
			@computer
		elsif @player == :Scissors && @computer == :Rock
			@computer
		elsif @player == :Scissors && @computer == :Paper
			@player
		else
			"draw"
		end
	end

end