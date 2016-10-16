class Game
	attr_reader :player, :opponent
	attr_accessor :outcome, :winner
	def initialize(player,opponent)
		@player = player
		@opponent = opponent
		@outcome = nil
	end

	def self.create(player,opponent)
		@instance = Game.new(player,opponent)
	end

	def self.instance
		@instance 
	end

	def redirect?
		@opponent.is_a?(Player) && @opponent.choice == nil
	end


	def decide_winner
		weaknesses = {
			:rock => ["paper","spock"], 
			:paper => ["scissors","lizard"], 
			:scissors => ["rock","spock"], 
			:lizard => ["rock","scissors"], 
			:spock => ["lizard","paper"]
		}
		if @player.choice == @opponent.choice
			@outcome = "it's a draw."
		elsif weaknesses[@player.choice.to_sym].include?(@opponent.choice)
			@outcome = "#{@opponent.name} wins!"
		else
			@outcome = "#{@player.name} wins!"
		end
	end
end