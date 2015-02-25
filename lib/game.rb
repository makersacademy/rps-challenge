class Game

attr_reader :players, :winning, :possibilities

  def initialize
    @players = []
    @winning = {"rock" => "scissors",
      "scissors" => "paper",
      "paper" => "rock"
    }
    @possibilities = possibilities
  end

  def add_player(player)
    @players << player
  end


  def winner?(players)
    if players[1].choice == winning[players[0].choice]
      return "win"
    elsif players[0].choice == winning[players[1].choice]
      return "lost"
    else
      return "draw"
    end
  end

  def random_answer
    possibilities = ["rock", "paper", "scissors"].shuffle
    return possibilities[0]
  end

end