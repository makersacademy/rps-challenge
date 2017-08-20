CHOICES = ["Paper", "Scissors", "Rock"]

class Opponent

	 attr_accessor :choices

	 def initialize
 		 @choices = CHOICES
 	end

	 def opponent_turn
 		 @choices.sample

 	end

end
