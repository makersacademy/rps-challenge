require_relative './player'

class Game
  attr_reader :p_1, :p_2, :matches_played, :beats

  def initialize(p_1, p_2)
    @beats = { rock: [:scissors],
               paper: [:rock],
               scissors: [:paper] }
    @p_1 = p_1
    @p_2 = p_2
    @matches_played = 0
  end

  def select_moves move_1, move_2
    p_1.make_move move_1
    p_2.name == 'COMPUTER' ? p_2.make_move(random_move) : p_2.make_move(move_2)
  end

  def random_move
    @beats.keys.sample
  end

  def match_result
    if (p_1.move == p_2.move)
      0
    elsif beats[p_1.move].include?(p_2.move)
      1
    else
      2
    end
  end

end

