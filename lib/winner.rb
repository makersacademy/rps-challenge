require_relative './game'

class Winner
  BEATS = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  def decide(player_1, player_2)
    check_moves([player_1, player_2])
    if player_1.move == player_2.move
      :draw
    elsif BEATS[player_1.move] == player_2.move
      player_1
    else
      player_2
    end
  end

  private

  def check_moves(players)
    players.each do |player| 
      fail "Invalid move given in Winner class" unless Game::MOVES.include?(player.move)
    end
  end
end
