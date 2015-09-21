require_relative "computer"
require_relative "player"

class Game

  # RULES = {
  #   rock: { beats: scissors, loses_to: paper },
  #   scissors: { beats: paper, loses_to: rock },
  #   paper: { beats: rock, loses_to: scissors }
  # }
  #
  # # RULES[:rock][:beats]
  #
  # def player_wins?(player, computer)
  #   return "draw" if draw?
  #   RULES:[player.choice][:beats] == computer.choice ? "player wins" : "computer wins"
  # end
  #
  # def draw?
  #   RULES[player.choice] == RULES[computer.choice]
  # end

  # def play(player, computer)
  #   if player.move == computer.select
  #     "That was a tie!"
  #   elsif player.move == :rock     && computer.select == :scissors ||
  #     player.move     == :paper    && computer.select == :rock     ||
  #     player.move     == :scissors && computer.select == :paper
  #       "You win!"
  #   else player.move == :rock     && computer.select == :paper    ||
  #     player.move    == :paper    && computer.select == :scissors ||
  #     player.move    == :scissors && computer.select == :rock
  #       "The computer wins!"
  #   end
  # end

  def play(player, computer)
    player.move == computer.select ? "That was a tie!" :
    player.move == :rock && computer.select == :scissors ||
    player.move == :paper    && computer.select == :rock ||
    player.move == :scissors && computer.select == :paper ?
      "You win!" : "The computer wins!"
  end
end
