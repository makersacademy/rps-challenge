class Game

  attr_reader :players

  def initialize(players = [])
    @players = players
  end

  def add(player)
    players << player
  end

  def ready?
    has_a_player?
  end

  def has_a_player?
    !players.nil?
  end

  def winner?
    if (self.random_move == :rock && player.move == :scissors) || (self.random_move == :scissors && player.move == :paper) || (self.random_move == :paper && player.move == :rock)
    return "computer"
    else 
    return "player"
    end
  end

end
