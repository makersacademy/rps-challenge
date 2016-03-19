require_relative 'player'

class Hand 

	attr_reader :my_weapon, :opponent_weapon

	def initialize(my_weapon, player1)
		@player1 = player1
		@my_weapon = my_weapon
		@opponent_weapon = nil
	end

	def self.hand(my_weapon, player1)
		@hand = Hand.new(my_weapon, player1)
	end

	def self.instance
		@hand 
	end

	def winner
  		winning_moves = {
    					'rock' => 'scissors',
    					'scissors' => 'paper',
    					'paper' => 'rock'
  										}  
  		return 'Draw' if @my_weapon == @opponent_weapon
  		winning_moves[@my_weapon] == @opponent_weapon ? @player1.name : "The Computer"
	end

	def weapon		
		num = random_gen		
		if num==1
			@opponent_weapon = 'rock'
		elsif num==2
			@opponent_weapon ='paper'
		else
			@opponent_weapon = 'scissors'
		end
	end

	def random_gen
		Kernel.rand(1..3)
	end

end