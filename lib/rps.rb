class RPS

  # K == Spock
  def initialize(name, move, rival = ["R", "S", "P", "L", "K"].sample)
    @name = name
    @move = move
    @rival = rival
  end

  def rival
    @rival
  end

  def name
    @name
  end

  def logic
    if @rival == @move
      draw
    else
      not_draw
    end
  end
# Method to long but kept 11 lines to ensure clarity (i.e not nested ternary statements)
  
  def not_draw

    if @move == "S"
      scissors 
    elsif @move == "R"
      rock
    elsif @move == "P"
      paper
    elsif @move == "L"
      lizard
    elsif @move == "K"
      spock
    end
  end

  private

  def draw
    "YOU DRAW PLAY AGAIN?"
  end

  def win
    "YOU WIN"
  end

  def lose
    "YOU LOSE"
  end

  def paper
    if @rival == "R"
      win
    elsif @rival == "S"
      lose
    elsif @rival == "L"
      lose
    elsif @rival == "K"
      win
    end
  end

  def scissors
    if @rival == "R"
      lose
    elsif @rival == "P"
      win
    elsif @rival == "L"
      win
    elsif @rival == "K"
      lose
    end
  end

  def rock
    if @rival == "P"
      lose
    elsif @rival == "S"
      win
    elsif @rival == "L"
      win
    elsif @rival == "K"
      lose
    end
  end

  def lizard
    if @rival == "R"
      lose
    elsif @rival == "P"
      win
    elsif @rival == "S"
      lose
    elsif @rival == "K"
      win
    end
  end

  def spock
    if @rival == "R"
      win
    elsif @rival == "P"
      lose
    elsif @rival == "S"
      win
    elsif @rival == "L"
      lose
    end
  end
end
