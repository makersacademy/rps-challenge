class Game

  attr_accessor :player

  def initialize player_1=nil, player_2=nil
    @player_1 = player_1
    @player_2 = player_2
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

  def choices
    choices = [:rock, :paper, :scissors]
    return choices
  end

end
