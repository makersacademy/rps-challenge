class Log
	attr_reader :log, :history_log, :ties

	def initialize(player)
		@log = {player.name => 0, 'Ties' => 0, 'Computer' => 0}
		@history_log = []
		@ties = 0
	end

	def add(player, move)
		history_log << Hash[player.name, move]
	end

	def tie
		@ties += 1
	end

end
