class Game

	attr_reader :player, :computer_weapon, :winner

	@game = nil

	def initialize(player)
		@player = player
		@winner = nil
	end

	def self.create(player)
		@game = Game.new(player)
	end

	def self.instance
		@game
	end

	def determine_winner
		computer_choose_weapon
		check_result
	end

	private

		WEAPONS = [:rock, :paper, :scissors, :lizard, :spock]
		WIN_SCENARIOS = { rock: [:scissors, :lizard],
							paper: [:rock, :spock],
							scissors: [:paper, :lizard],
							lizard: [:paper, :spock],
							spock: [:rock, :scissors] }

		def computer_choose_weapon
			@computer_weapon = WEAPONS.sample
		end

		def check_result
			if @player.weapon == @computer_weapon
				@winner = nil
			elsif WIN_SCENARIOS[@player.weapon].include? @computer_weapon
				@winner = @player
			else
				@winner = "Computer"
			end
		end

end