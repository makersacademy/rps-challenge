class Log
	attr_reader :scores, :history, :ties

	def initialize
		@scores = {}
		@history = []
		@ties = 0
	end

	def update_history(player, move)
		history << Hash[player.name, move]
	end

	def add_tie
		@ties += 1
	end

	def add_win(player)
		if @scores.include? player.name
			@scores[player.name] += 1
		else
			@scores[player.name] = 1
		end
	end

end
