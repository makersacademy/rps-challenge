class Game

  attr_reader :players

  PLAYER_1_WINS = [[:rock, :scissors], [:scissors, :paper], [:paper, :rock]]
  # PLAYER_2_WINS = [[:scissors, :rock], [:paper, :scissors], [:rock, :paper]]
  # DRAWS = [[:rock, :rock], [:paper, :paper], [:scissors, :scissors]]

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def winner
    return nil if draw
    PLAYER_1_WINS.include?(moves) ? player_1 : player_2
  end

  def draw
    player_1_move == player_2_move
  end

  def player_1_move
    player_1.weapon
  end

  def player_2_move
    player_2.weapon
  end

  def moves
    [player_1_move, player_2_move]
  end

end
