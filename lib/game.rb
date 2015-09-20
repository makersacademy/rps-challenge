require_relative "computer"
require_relative "player"

class Game

  def play(player, computer)
    if    player.move == computer.select
      "That was a tie!"
    elsif player.move == :rock     && computer.select == :scissors ||
          player.move == :paper    && computer.select == :rock     ||
          player.move == :scissors && computer.select == :paper
      "You win!"
    else  player.move == :rock     && computer.select == :paper    ||
          player.move == :paper    && computer.select == :scissors ||
          player.move == :scissors && computer.select == :rock
      "The computer wins!"
    end
  end
end
