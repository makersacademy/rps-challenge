class Game

OPTIONS = { :rock => :paper,
            :paper => :scissors,
            :scissors => :rock }


	def play (player1, player2)
		if player1 == player2
			"Draw"
		elsif OPTIONS[player1] == player2
    	"Player 2 Wins"
  	else
    	"Player 1 Wins"
  	end
	end

	#How much are these needed?
	def user_choice (choice)
		@choice = choice
	end


	def computer_choice
		[:rock, :paper, :scissors].sample
	end

end