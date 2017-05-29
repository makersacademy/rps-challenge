class Game

WIN = :win
LOSE = :lose
DRAW = :draw

  def initialize(player1, player2)
    @player = [player1, player2]
  end

  def player_1
    @player.first
  end

  def player_2
    @player.last
  end

  def play(item)
    player_2.choose(Randomiser.new.picked_randomly)
    player_1.choose(item)
    if player_1.item.beats(player_2.item)
      return WIN
    elsif player_2.item.beats(player_1.item)
      return LOSE
    else
      return DRAW
    end
  end

end
