require_relative './player'

class Game
  attr_reader :p_1, :p_2

  def initialize p_1, p_2
    @p_1 = p_1
    @p_2 = p_2
  end

  def play moves
    p_1.make_move moves[0]
    p_2.name == 'COMPUTER' ? (p_2.random_move) : (p_2.make_move moves[1])
  end
end

# the method play should be split into: - make_move p_1,
# - make_move p_2, - check_winner
# in check_winner, you could check that the current moves
# of each player