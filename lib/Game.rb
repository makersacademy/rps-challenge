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
		elsif player == 'rock' && computer == 'paper'
			'Pirate Computer wins!, you suck!'
		elsif player == 'paper' && computer == 'scissors'
			'Pirate Computer wins!, you suck!'
		elsif player == 'scissors' && computer == 'rock'
			'Pirate Computer wins!, you suck!'
		else
			'It is a Draw'
		end
	end

end