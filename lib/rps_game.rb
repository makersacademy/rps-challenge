class RpsGame

  P1_WINS = 0
  P2_WINS = 1
  DRAW    = 2

  def random_move
    move_index = Kernel.rand(RpsGame::MOVES.length)
    RpsGame::MOVES[move_index]
  end

  MOVES = %w[rock paper scissors].freeze
  WINS = [
               ['Rock', 'Scissors'],
               ['Paper', 'Rock'],
               ['Scissors', 'Paper']
             ]

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
      when 'paper'
        return DRAW
      end

    when 'scissors'
      case p2_move
      when 'rock'
        return P2_WINS
      when 'paper'
        return P1_WINS
      when 'scissors'
        return DRAW
      end
    end
    raise 'invalid move'
  end
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)

    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2 = Compuer.new)
    @game = @RpsGame || @RpsGame.new(player_1, player_2)
  end

  def result(player_1, player_2)
    return "You Win" if WINS.include? [player_1, player_2]
    return "It\'s a Draw" if player_1 == player_2
    return "You Lose"
  end
end
