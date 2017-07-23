class Game

  attr_reader :player_1, :player_2, :mode

  def initialize(player_1, player_2, mode)
    @player_1 = player_1
    @player_2 = player_2
    @mode = mode
  end

  def self.instance
    @game
  end

  def self.add(player_1, player_2, mode)
    @game = Game.new(player_1, player_2, mode)
  end



end
