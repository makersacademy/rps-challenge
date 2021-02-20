class Game
	attr_reader :player_1, :player_2, :winner
	
	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
	end

	def round
		@p1 = player_1.move
		@p2 = player_2.move
		logic(@p1, @p2)
	end

	private

	def logic(p1, p2)
		if p1 == 'rock'
			if p2 == 'rock'
				@winner = 'draw'
			elsif p2 == 'scissors'
				@winner = p1
			elsif p2 == 'paper'
				@winner = p2
			end
		elsif p1 == 'paper'
			if p2 == 'rock'
				@winner = p1
			elsif p2 == 'scissors'
				@winner = p2
			elsif p2 == 'paper'
				@winner = 'draw'
			end
		elsif p1 == 'scissors'
			if p2 == 'rock'
				@winner = p1
			elsif p2 == 'scissors'
				@winner = 'draw'
			elsif p2 == 'paper'
				@winner = p2
			end
		end
	end
end