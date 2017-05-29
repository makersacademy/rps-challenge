class Game

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
    player_1.choose(Randomiser.new.picked_randomly)
    player_2.choose(item)
    if player_1.item.beats(player_2.item)
      return [player_1]
    elsif player_2.item.beats(player_1.item)
      return [player_2]
    else
      return [player_1, player_2]
    end
  end

end
