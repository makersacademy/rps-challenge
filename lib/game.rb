class Game

  def letsPlayRPS(p1, comp)

    if p1 == comp
      "It's a draw"
    elsif (p1 == 'paper' && comp == 'rock') || (p1 == 'rock' && comp == 'scissors') || (p1 == 'scissors' && comp == 'rock')
      "You win!"
    else
      "You lose!"
    end
  end

end
