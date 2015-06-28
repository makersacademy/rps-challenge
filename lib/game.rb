require_relative 'player'

class Game

  attr_reader :player1, :player2

  def initialize playerClass
    @player1 = initialize_player playerClass
    @player2 = initialize_player playerClass
  end

  def initialize_player playerClass
    player = playerClass.new
    player
  end



# case is a conditional statement, that means it relies on BOOLEANS.
# it therefore MUST be self.player1.choice because the 'choose' method does not return true/false
# choice does.

  def result
    case
    when (self.player1.choice == :rock and self.player2.choice == :rock)
      'Player 1 - rock, Player 2 - rock. Its a draw. Keep going!'
    when (self.player1.choice == :rock and self.player2.choice == :paper)
      'Player 1 - rock, Player 2 - paper. Paper loses to rock (weird, right?). Player 2 wins!'
    when (self.player1.choice == :rock and self.player2.choice == :scissors)
      'Player 1 - rock, Player 2 - scissors. Scissors should lose to a rock. Player 1 wins!'
    when (self.player1.choice == :paper and self.player2.choice == :rock)
      'Player 1 - paper, Player 2 - rock. paper covers rock. Player 1 wins!'
    when (self.player1.choice == :paper and self.player2.choice == :paper)
      'Player 1 - paper, Player 2 - paper. What do you think was going to happen? Draw!'
    when (self.player1.choice == :paper and self.player2.choice == :scissors)
      'Player 1 - paper, Player 2 - scissors. Scissors cut paper, obviously. Player 2 wins!'
    when (self.player1.choice == :scissors and self.player2.choice == :rock)
      'Player 1 - scissors, Player 2 - rock. Rock smash scissor. Player 2 wins!'
    when (self.player1.choice == :scissors and self.player2.choice == :paper)
      'Player 1 - scissors, Player 2 - paper. Scissors cut paper. Player 1 wins!'
    when (self.player1.choice == :scissors and self.player2.choice == :scissors)
      'Player 1 - scissors, Player 2 - scissors. Ermm... cutting match? no. Draw!'
    else
      "you dun goof'd somehow"
    end
  end

# rules = { 
#       :rock     => {:rock => :draw, :paper => :paper, :scissors => :rock},
#       :paper    => {:rock => :paper, :paper => :draw, :scissors => :scissors},
#       :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw}
#     }

#  rules[player1][computer]

end