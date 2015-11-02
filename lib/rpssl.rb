class Rpssl

	attr_reader :player_1_move, :player_2_move

	RESULTS = {paper: [:rock, :spock], rock: [:scissors, :lizard],
	scissors: [:paper, :lizard], spock: [:scissors, :rock],
	lizard: [:spock, :paper]}

	def winner(player_1_move, player_2_move)
		return player_1_move if RESULTS[player_1_move].include? player_2_move 
		player_2_move
	end
end