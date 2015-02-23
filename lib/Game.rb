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
		elsif computer == 'rock' && player == 'scissors'
			'Computer wins!'
		elsif computer == 'paper' && player == 'rock'
			'Computer wins!'
		elsif computer == 'scissors' && player == 'paper'
			'Computer wins!'	
		else
			'It is a Draw'
		end
	end

end