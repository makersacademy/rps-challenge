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


	def random_choice
		[:rock, :paper, :scissors].sample
	end

end