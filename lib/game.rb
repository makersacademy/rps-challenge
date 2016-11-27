class Game

	attr_reader :player

	@game = nil

	def initialize(player)
		@player = player
	end

	def self.create(player)
		@game = Game.new(player)
	end

	def self.instance
		@game
	end

	# def determine_winner
	# 	computer_choose_weapon
	# 	@winner = check_result
	# end

	# private

	# 	attr_reader :computer_weapon

	# 	WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]
	# 	WIN_SCENARIOS = { rock: [:scissors, :lizard],
	# 						paper: [:rock, :spock],
	# 						scissors: [:paper, :lizard],
	# 						lizard: [:paper, :spock],
	# 						spock: [:rock, :scissors] }

	# 	def computer_choose_weapon
	# 		@computer_weapon = WEAPONS.sample
	# 	end

	# 	def check_result
	# 		if WIN_SCENARIOS[@player_weapon].include? :computer_weapon
	# 			@winner = @player
	# 		else
	# 			@winner = "Computer"
	# 		end
	# 	end

end