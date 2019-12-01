class Game 

MOVE = [:rock, :paper, :scissors]

  def random_move 
    MOVE.sample
  end

  def result(player_move)
    @computer_move = random_move
    rule = { rock: :scissors, scissors: :paper, paper: :rock}

    if player_move == @computer_move
      :draw
    elsif rule[player_move] == @computer_move
      :win
    else
      :lose
    end
  end
end