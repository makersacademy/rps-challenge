class Game

  attr_accessor :player, :choices

  def initialize
    player = nil
    @choices = [:rock, :paper, :scissors]
  end

  def add(player)
    self.player = player
  end

  def ready?
    has_a_player?
  end

  def has_a_player?
    !player.nil?
  end

  def random_move
    choices.shuffle.first
  end

  def player_choice(move)
    @move = move
  end

  def winner?
    if (self.random_move == :rock && player.move == :scissors) || (self.random_move == :scissors && player.move == :paper) || (self.random_move == :paper && player.move == :rock)
    return "computer"
    else 
    return "player"
    end
  end

end
