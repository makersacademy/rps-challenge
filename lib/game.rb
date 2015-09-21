require_relative 'player'
require_relative 'computer'

class Game

  RULES = {
   rock:     {rock: :draw, paper: :computer_wins, scissors: :player_wins,
     spock: :computer_wins, lizard: :player_wins},
   paper:    {rock: :player_wins, paper: :draw,  scissors: :computer_wins,
     spock: :player_wins, lizard: :computer_wins},
   scissors: {rock: :computer_wins, paper: :player_wins, scissors: :draw,
     spock: :computer_wins, lizard: :player_wins},
   spock:    {rock: :player_wins, paper: :computer_wins, scissors: :player_wins,
     spock: :draw, lizard: :computer_wins},
   lizard:   {rock: :computer_wins, paper: :player_wins, scissors: :computer_wins,
     spock: :player_wins, lizard: :draw}
  }

  def play(player, computer)
    @winner = RULES[player.object][computer.auto]

    if @winner == :draw
      draw
    elsif @winner == :computer_wins
      looser
    else
      winner
    end
  end

  def play2(player1, player2)
    @winner = RULES[player1.object][player2.object]

    if @winner == :draw
      draw
    elsif @winner == :computer_wins
      looser1
    else
      winner1
    end
  end


  # private

  def winner
    "You are the winner!"
  end

  def looser
    "You lose!"
  end

  def draw
    "That's a draw!"
  end

  def winner1
    "Player 1 wins!"
  end

  def looser1
    "Player 2 wins!"
  end
end
