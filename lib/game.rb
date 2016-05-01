class Game

  attr_reader :best_of_n

  PLAYER_1_WINS = [[:rock, :scissors],[:scissors, :paper],[:paper, :rock]]

  def initialize player_1, player_2
    @players = [player_1,player_2]
    @best_of_n = 3
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def winner
    return nil if tie
    moves = [player_1.weapon, player_2.weapon]
    PLAYER_1_WINS.include?(moves) ? player_1 : player_2
  end

  def allocate_points
    return nil if tie
    winner.add_point
  end

  def overall_winner
    players.find {|player| player.score > (best_of_n/2)}
  end

  def best_of_plus_2
    @best_of_n += 2
  end

  private
  attr_reader :players
  def tie
    player_1.weapon == player_2.weapon
  end

end
