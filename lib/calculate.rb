class Calculate

  attr_reader :player_1_move, :player_2_move

  def initialize(player_1_move, player_2_move)
    @player_1_move = player_1_move
    @player_2_move = player_2_move
  end

  def choices
    ["Scissors", "Paper", "Rock"]
  end

  def result
    index_move = choices.index(@player_1_move)
    winning_move = choices[index_move - 1]
    if @player_2_move == @player_1_move
      "Draw"
    elsif @player_2_move == winning_move
      'Player 2 Wins'
    else
      'Player 1 Wins'
    end
  end

end

