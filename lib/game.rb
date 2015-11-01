require_relative 'player'
class Game

	attr_reader :player_1, :player_2, :count, :current_player
	
	def initialize(player_1, player_2)
		@player_1 = player_1
		@player_2 = player_2
		@current_player = player_1
		@results = {paper: [:rock, :spock], rock: [:scissors, :lizard],
								scissors: [:paper, :lizard], spock: [:scissors, :rock],
								lizard: [:spock, :paper]}
		@count = 0
	end

	def player_1_name
		player_1.name
	end

	def player_2_name
		player_2.name
	end

	def player_1_score
		player_1.score
	end

	def player_2_score
		player_2.score
	end

	def current_player_name
		current_player.name
	end

	def log_move move
		current_player.log(move)
	end

	def switch
		@current_player = opposite_player
	end

	def winners_name
		winner.win
		winner.name
	end

	def winners_move
		winner.move.to_s
	end

	def current_player_computer?
		current_player_name == "Computer" 
	end

	def finished?
		count.even? 
	end

  def draw?
  	player_1.move == player_2.move
  end

		private

  def opposite_player
  	add_count
  	@current_player == player_1 ?  player_2 : player_1 
  end

  def add_count
  	@count += 1
  end

  def winner
		return player_1 if @results[@player_1.move].include? @player_2.move 
		player_2
	end
end

