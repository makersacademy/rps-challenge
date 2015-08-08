require_relative './player'

class Game
  attr_reader :p_1, :p_2, :matches_played

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
    0 if p_1.current_move == p_2.current_move
  end

  # def play moves
  #   @matches_played += 1
  #   p_1.make_move moves[0]
  #   p_2.name == 'COMPUTER' ? (p_2.random_move) : (p_2.make_move moves[1])
  # end

  # def check_winner(move_1, move_2)
  #   move_1 = p_1.move
  #   move_2 = p_2.move
  #   (move_1 == :rock && move_2 == :paper) ? false : true
  # end

end

# the method play should be split into: - make_move p_1,
# - make_move p_2, - check_winner
# in check_winner, you could check that the current moves
# of each player and decide whether the first player is
# the winner, then you return true if the first player
# is the winner or false if the second player is the winner