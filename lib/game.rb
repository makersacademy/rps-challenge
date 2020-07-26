class Game
  attr_reader :players
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def winner_is
    if player_1.throw.choice == "rock" && player_2.throw.choice == "scissors"
      return player_1
    end
  end

end
