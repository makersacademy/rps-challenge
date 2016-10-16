class Game

  attr_reader :player_1

  def self.create_single(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player_1)
    @player_1 = player_1
  end

  def player_1_name
    @player_1.name
  end

  def player_1_weapon
    @player_1.weapon
  end
end
