# Determines winner

class Game
  attr_reader :players, :winner

  def initialize(player1, player2)
    @players = [player1, player2]
    @winner = :draw
  end

  def fight
    moves
    wins = { "Rock" => "Scissors", "Scissors" => "Paper", "Paper" => "Rock" } #
    case
      when wins[@move1] == @move2 then @winner = players[0]
      when wins[@move2] == @move1 then @winner = players[1]
    end
  end

  def moves
    @move1 = @players[0].choice
    @move2 = @players[1].choice
  end
end
