class Game

  attr_reader :player

  def initialize( player )
    @player = player
    @player_choice
  end

  def choose( choice )
    return rock if choice == "rock"
    return paper if choice == "paper"
    return scissors if choice == "scissors"
  end

  def rock
    "rock"
  end

  def paper
    "paper"
  end

  def scissors
    "scissors"
  end


end
