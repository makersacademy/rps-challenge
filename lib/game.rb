
class Game
  attr_reader :length, :player_score, :opponent_score

  def initialize(player, opponent, length)
    @player = player
    @opponent = opponent
    @length = length
    @player_score = 0
    @opponent_score = 0
    @key = {rocks: 1, paper: 2, scissors: 3}
  end

  def self.create(player, opponent, length)
    @game = Game.new(player, opponent, length)
  end

  def self.instance
    @game
  end

  def player_win
    @player_score += 1
  end

  def opponent_win
    @opponent_score += 1
  end

  def play(player_move,opponent_move)
    if player_move == opponent_move
      return 0
    end

    if player_move == 1 && opponent_move == 2
      opponent_win
      2
    elsif player_move == 1 && opponent_move == 3
      player_win
      1
    elsif player_move == 2 && opponent_move == 1
      player_win
      1
    elsif player_move == 2 && opponent_move == 3
      opponent_win
      2
    elsif player_move == 3 && opponent_move == 1
      opponent_win
      2
    elsif player_move == 3 && opponent_move == 2
      player_win
      1
    end
  end


end
