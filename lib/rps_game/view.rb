# The purpose of this class is to interact with the player
# It displays messages and fetches user input
class View

	def welcome_player
		puts 'Welcome to Rock Paper Scissors!'
	end

	def players_next_move
		print 'Select [r,p,s]:'
		move_as_char = gets
		# convert move_as_char into one of the symbols :rock, :paper, :scissors
	end

	def display_result(result)
		puts "It is a draw..."
	end
end