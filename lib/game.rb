require_relative 'computer'
class Game

  P1_WINS = 0
  P2_WINS = 1
  DRAW    = 2

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

  def self.create(player_1, player_2 = Computer.new)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def result(player_1, player_2)
    if WINS.include? [player_1, player_2]
      "#{@player_1.name} loses"
    elsif player_1 == player_2
      "It's a Draw"
    else
      "#{@player_1.name} wins"
    end
  end
end
