class Game

	attr_reader :players

	def initialize
		@players = []
		# @turn = false
	end

	def add(player)
		raise 'game already has 2 players!' if player_count == 2
		@players << player
	end

	def player_count
		@players.length
	end

	def winner

		if @players.first.rps_holder.content == 'scissors'
			return 'player 2 wins!' if @players.last.rps_holder.content == 'rock'
			return 'player 1 wins!' if @players.last.rps_holder.content == 'paper'
			return 'draw!' if @players.last.rps_holder.content == 'scissors'
		elsif @players.first.rps_holder.content == 'rock'
			return 'player 2 wins!' if @players.last.rps_holder.content == 'paper'
			return 'player 1 wins!' if @players.last.rps_holder.content == 'scissors'
			return 'draw!' if @players.last.rps_holder.content == 'rock'
		elsif @players.first.rps_holder.content == 'paper'
			return 'player 2 wins!' if @players.last.rps_holder.content == 'scissors'
			return 'player 1 wins!' if @players.last.rps_holder.content == 'rock'
			return 'draw!' if @players.last.rps_holder.content == 'paper'
		else
			return 'something has gone wrong'
		end

	end

end 