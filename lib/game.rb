class Game

  attr_reader :player, :enemy
  WEAPONS = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def initialize(player, enemy)
    @player = player
    @enemy = enemy
  end

  def self.create(player, enemy)
    @game = Game.new(player, enemy)
  end

  def self.instance
    @game
  end

end
