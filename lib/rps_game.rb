class RpsGame

  P1_WINS = 0
  P2_WINS = 1
  DRAW    = 2

  def move(p1_move, p2_move)

    case p1_move
    when 'rock'
      case p2_move
      when 'rock'
        return DRAW
      when 'paper'
        return P2_WINS
      when 'scissors'
        return P1_WINS
      end

    when 'paper'
      case p2_move
      when 'rock'
        return P1_WINS
      when 'scissors'
        return P2_WINS
      end
    end

    raise 'invalid move'
  end
end
