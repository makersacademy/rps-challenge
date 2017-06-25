require "./lib/player.rb"

class Game

  attr_reader :player

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end

  def opponent_choice
    [:rock, :paper, :scissors].sample
  end

end
