class Game

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  attr_reader :player, :choices

  def initialize(player)
    @player = player
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def player
    @player
  end

end
