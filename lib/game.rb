class Game

  def self.create(player1)
    @game = Game.new(player1)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @players = [player]
  end

  def player1
    @players.first
  end

  def fight_with(weapon)
    @weapon = weapon
  end
end
