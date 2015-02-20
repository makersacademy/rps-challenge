class Game

	# attr_accessor :turn

	def initialize
		@players = []
		# @turn = false
		@winner = []
	end

	def add(player)
		raise 'game already has 2 players!' if player_count == 2
		@players << player
	end

	def player_count
		@players.length
	end

	def winner
		if @players[0].content = 'scissors'
			return 'player 2 wins!' if @players[1].content == 'rock'
		end

	end

end 