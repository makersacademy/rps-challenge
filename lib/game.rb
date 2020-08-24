class Game

  WINNING_COMBINATIONS = {
    :rock     => { :rock => :draw, :paper => :lose, :scissors => :win },
    :paper    => { :rock => :win, :paper => :draw, :scissors => :lose },
    :scissors => { :rock => :lose, :paper => :win, :scissors => :draw },
  }

  COMPUTER_CHOICE =  [:rock, :paper, :scissors]

  def computer_choice
    COMPUTER_CHOICE.sample
  end

  def result(player, computer)
    WINNING_COMBINATIONS[player][computer]
  end
  
end