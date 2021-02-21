class Game
	attr_reader :player_1, :player_2, :winner
	
	def initialize(player_1, player_2 = Player.new)
		@player_1 = player_1
		@player_2 = player_2
	end

	def round
		@p1 = player_1.move
		@p2 = player_2.move
		logic(@p1, @p2)
	end

	def print_result
		if @winner == 'draw'
			"It's a draw!"
		else
			"#{@winner} wins!"
		end
	end

	private

	def logic(p1, p2)
		if p1 == 'rock'
			if p2 == 'rock'
				@winner = 'draw'
			elsif p2 == 'scissors'
				@winner = @player_1.name
			elsif p2 == 'paper'
				@winner = @player_2.name
			end
		elsif p1 == 'paper'
			if p2 == 'rock'
				@winner = @player_1.name
			elsif p2 == 'scissors'
				@winner = @player_2.name
			elsif p2 == 'paper'
				@winner = 'draw'
			end
		elsif p1 == 'scissors'
			if p2 == 'rock'
				@winner = @player_1.name
			elsif p2 == 'scissors'
				@winner = 'draw'
			elsif p2 == 'paper'
				@winner = @player_2.name
			end
		end
	end


end