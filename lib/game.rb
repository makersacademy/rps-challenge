class Game

  attr_reader :players

  def initialize
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def player
    @players.first
  end

  def opponent
    @players.last
  end

  def player_win?
    return nil if player.decision == opponent.decision
    return true if player.decision == 'rock' && opponent.decision == 'scissors'
    return true if player.decision == 'paper' && opponent.decision == 'rock'
    return true if player.decision == 'scissors' && opponent.decision == 'paper'
    false
  end

  def winner
    return nil if player_win?.nil?
    player_win? ? player : opponent
  end


end
