class Game
	
	SIGNS = [:rock, :paper, :scissors]

	WINNER_COMBS = [{:rock => :scissors},
									{:scissors => :paper},
            			{:paper => :rock}]

	attr_reader :player1, :player2, :player1_sign, :player2_sign

	def self.create(player1)
		@game = Game.new(player1)
	end

	def self.instance
		@game
	end

	
	def initialize(player1)
		@player1 = player1
		@player1_sign = player1.sign_chosen.downcase
	end


	def aleatory_rival
		@player2_sign = SIGNS.sample
	end

	def winner
		WINNER_COMBS.include?(player1_sign => player2_sign)
	end

	def tie	
		player1_sign == player2_sign
	end

	def outcome
		return player1.name if winner
		return "No winner" if tie
	 "Machine"
	end
end