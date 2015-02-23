class Game 

	attr_accessor :options

	def options
		@options = %w(scissors paper rock)
	end

	def winner(player, computer)
		if player == 'scissors' && computer == 'paper'
			'Player wins!'
		elsif player == 'rock' && computer == 'scissors'
			'Player wins!'
		elsif player == 'paper' && computer == 'rock'
			'Player wins!'
		else
			'You lose!'
		end
	end

end