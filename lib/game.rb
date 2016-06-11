class Game
attr_reader :score, :choice


	def player_choice(choice)
		@choice = choice
	end

	def computer_choice
		@comp_choice = ["rock", "paper", "scissors"].sample
	end

	def result
		choice == computer_choice ? "It is a tie!" : winner
	end

	def self.create
		@game = Game.new
	end

	def self.instance
		@game
	end

	private


	def winner
		if computer_choice == "paper"
			choice == "rock" ? "Computer wins!" : "You win!"
		elsif computer_choice == "rock"
			choice == "scissors" ? "Computer wins" : "You win!"
		else
			choice == "paper" ? "Computer wins" : "You win!"
		end
	end



end
