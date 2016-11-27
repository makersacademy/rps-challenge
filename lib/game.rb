require_relative 'weapons'

class Game

	include Weapons

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

		def computer_choose_weapon
			@computer_weapon = WEAPONS.sample
		end

		def draw?
			@player.weapon == @computer_weapon
		end

		def player_win?
			beats?(@player.weapon, @computer_weapon)
		end

		def check_result
			return if draw?
			player_win? ? @winner = @player : @winner = "Computer"
		end

end