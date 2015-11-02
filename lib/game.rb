class Game

	attr_reader :player, :computer

	def initialize(player, computer)
		@player = player
		@computer = computer
	end

	def winner
		if @player == :Rock && @computer == :Paper
			"Computer wins!"
		elsif @player == :Rock && @computer == :Scissors
			"Human wins!"
		elsif @player == :Paper && @computer == :Rock
			"Human wins!"
		elsif @player == :Paper && @computer == :Scissors
			"Computer wins!"
		elsif @player == :Scissors && @computer == :Rock
			"Computer wins!"
		elsif @player == :Scissors && @computer == :Paper
			"Human wins!"
		else
			"It's a draw"
		end
	end

end