class Game
	attr_reader :player, :opponent
	attr_accessor :outcome
	def initialize(player,opponent)
		@player = player
		@opponent = opponent
		@outcome = nil
	end

	def self.create(player,opponent)
		@instance ||= Game.new(player,opponent)
	end

	def self.instance
		@instance 
	end

	def decide_winner
		weaknesses = {:rock => "paper", :paper => "scissors", :scissors => "rock"}
		if @player.choice == @opponent.choice
			@outcome = "draw"
		elsif @opponent.choice == weaknesses[@player.choice.to_sym]
			@outcome = "you lose!"
		else
			@outcome = "you win"
		end
	end
end