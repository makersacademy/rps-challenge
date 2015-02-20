class Game

attr_reader :players, :winning

  def initialize
    @players = []
    @winning = {"rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }
  end

  def add_player(player)
    @players << player
  end

  def draw?
    return "draw" if players[0].choice == players[1].choice
  end

  def lost?
    return "lost" if players[0].choice == winning[players[1].choice]
  end

  def win?
    return "win" if players[1].choice == winning[players[0].choice]
  end

end