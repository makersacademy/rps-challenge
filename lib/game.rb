require_relative 'player'
require_relative 'computer'

class Game

  RULES = {
    rock: {rock: :draw, paper: :computer_wins, scissors: :player_wins},
    paper: {rock: :player_wins, paper: :draw, scissors: :computer_wins},
    scissors: {rock: :computer_wins, paper: :player_wins, scissors: :draw}
  }

  def play (player, computer)
    @winner = RULES[player.object][computer.auto]
    if @winner == :draw
      draw
    elsif @winner == :computer_wins
      looser
    else
      winner
    end
  end

  def winner
    "You are the winner!"
  end

  def looser
    "You loose!"
  end

  def draw
    "It's a draw!"
  end
end
