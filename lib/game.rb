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
  end

  def play2(player1, player2)
    @winner = RULES[player1.object][player2.object]
  end
end
