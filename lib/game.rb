class Game
  attr_reader :create, :player_1, :player_2

  WEAPON = [:rock, :paper, :scissors]
  #constant with symbols

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create
    @game = Game.new(@player_1, @player_2)
  end

  def self.instance
    @game
  end
end
