class Game

	attr_reader :player, :game, :computer, :winner

	def initialize(player)
		@player = player
	end

	def self.create player
		@game = Game.new player
	end

	def self.load
		@game
	end

	def winner(pl, comp)
		if pl == comp
			@winner = 'Draw!'
		elsif pl == 'Rock' && comp == 'Scissors'
			@winner = @player
		elsif pl == 'Paper' && comp == 'Rock'
			@winner = @player
		elsif pl == 'Scissors' && comp == 'Paper'
			@winner = @player
		else
			@winner = "Computer"
		end
		#@winner
	end
end 