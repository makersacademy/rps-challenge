class Game
  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def players
    @players
  end
  
  def generate_move
    ['ROCK', 'PAPER', 'SCISSORS'].sample
  end

  def return_winner
    p1 = @players[0].read_move[0]
    p2 = @players[1].read_move[0]

    calculate_result(p1, p2)
  end

  private

  def calculate_result(p1, p2)
    if draw(p1, p2)
      "It's a draw!"
    elsif player1_wins(p1, p2)
      "#{@players[0].name} wins!"
    else
      "#{@players[1].name} wins!"
    end
  end

  def draw(p1, p2)
    p1 == p2
  end

  def player1_wins(p1, p2)
    (p1 == "R" && p2 == "S") || (p1 == "P" && p2 == "R") || (p1 == "S" && p2 == "P")
  end
end
