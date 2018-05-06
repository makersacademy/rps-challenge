class Game

  attr_reader :player_one, :player_two

  def initialize(player1, player2)
    @player_one = player1
    @player_two = player2
  end

  def calculate_win(player1, player2)
    p1_move = player1.move
    p2_move = player2.move
    if p1_move == 'rock' && p2_move == 'scissors'
      player1
    elsif p1_move == 'scissors' && p2_move == 'paper'
      player1
    elsif p1_move == 'paper' && p2_move == 'rock'
      player1
    elsif p1_move == 'scissors' && p2_move == 'rock'
      player2
    elsif p1_move == 'paper' && p2_move == 'scissors'
      player2
    elsif p1_move == 'rock' && p2_move == 'paper'
      player2
    else
      'draw'
    end
  end

end
