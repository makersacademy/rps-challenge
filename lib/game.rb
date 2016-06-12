require_relative 'player'
require_relative 'computer_player'

class Game

	WEAPONS = [:rock, :paper, :scissors]
	PLAYER1_WINS = [[:rock, :scissors], [:scissors, :paper], [:paper, :rock]]
	POINT_INCREMENT = 1

	attr_reader :player1, :player2, :player1_weapon, :player2_weapon

	def self.create(player1, player2)
		@game = Game.new(player1, player2)
	end

	def self.instance
		@game
	end

	def initialize(player1, player2)
		@player1 = player1
		@player2 = player2
	end

	def player1_select(weapon)
		@player1_weapon = weapon.to_sym
	end

	def player2_select(weapon=nil)
		if @player2.is_a? ComputerPlayer
			@player2_weapon = WEAPONS.sample
		else
			@player2_weapon = weapon.to_sym
		end
	end

	def winner
		return nil if tie?
		put_moves_in_array
		PLAYER1_WINS.include?(@moves) ? @player1 : @player2
	end

	def update_score
		winner.add_points if winner
	end

		private

	def put_moves_in_array
		@moves = []
		@moves << @player1_weapon
		@moves << @player2_weapon
	end

	def tie?
		@player1_weapon == @player2_weapon
	end

end