class Game

  attr_reader :player_1, :player_2

  PLAYER_1_WINS = [[:rock, :scissors],[:scissors, :paper],[:paper, :rock]]

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    return nil if tie
    moves = [player_1.weapon, player_2.weapon]
    PLAYER_1_WINS.include?(moves) ? player_1 : player_2
  end

  private
  def tie
    player_1.weapon == player_2.weapon
  end

end
