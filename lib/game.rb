class Game

  def generate_move
    moves = [:rock, :paper, :scissors]
    moves.sample
  end

  def outcome player_move, computer_move
    return "It's a draw!" if player_move == computer_move
    case player_move
    when :scissors
      declare_winner = computer_move == :paper ? "You win!" : "You lose!"
    when :paper
      declare_winner = computer_move == :rock ? "You win!" : "You lose!"
    when :rock
      declare_winner = computer_move == :scissors ? "You win!" : "You lose!"
    end
    declare_winner
  end

end
