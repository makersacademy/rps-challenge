class Scissors
  def game
    x = ["rock", "paper", "scissors"].sample
    if 'scissors'.length == x.length
      draw
    elsif x.length == 5
      win
    else
      lose
    end
  end

  def draw
    message_options = ['draw', 'win', 'lose']
    return message_options[0]
  end

  def win
    message_options = ['draw', 'win', 'lose']
    return message_options[1]
  end

  def lose
    message_options = ['draw', 'win', 'lose']
    return message_options[2]
  end
end
