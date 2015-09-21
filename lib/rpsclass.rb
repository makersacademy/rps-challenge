class Rps
	
	attr_reader :defeat, :player_choice, :result, :computer_choice
	# attr_accessor :player_choice

	def initialize
		@valid_plays = [:rock, :paper, :scissors]
		@defeat = {scissors: :rock, rock: :paper, paper: :scissors}
		@player_choice = ""
	end

	def play shape
		@player_choice = shape.downcase.to_sym
		if !@valid_plays.include?(player_choice)
			raise 'Please play Rock, Paper, or Scissors.'
		end
	end

	def computer_choice
		@computer_choice = @valid_plays.sample
	end

	def game_eval computer_choice, player_choice
		if player_choice == computer_choice
			@result = "It's a tie! Try again!"
		elsif computer_choice == @defeat[player_choice] 
			@result = "Bummer! You lose! Try Again!"
		else
			@result = "Congrats! You're a winner!"
		end
	end
end