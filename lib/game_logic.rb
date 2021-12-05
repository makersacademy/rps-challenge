class GameLogic
  attr_reader :players, :turn_number

  def initialize(p1,p2)
    @players = [p1,p2]
    @turn_number = 0
    @move = ["Rock", "Paper", "Scissors"]
  end

  def change_turn
    @turn_number += 1
  end

  def current_turn
    @players[@turn_number % 2]
  end

  def reset_moves
    @players.each { |player| player.reset_move }
  end 

  def winner
    p1_move = @move.index(@players[0].move)
    p2_move = @move.index(@players[1].move)
    return "It's a draw" if p1_move == p2_move
    return (p1_move == (p2_move + 1) % 3) ? "#{@players[0].name} wins" : "#{@players[1].name} wins"
  end

end
