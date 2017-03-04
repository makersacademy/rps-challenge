require_relative 'player'

class RPS

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = RPS.new(player)
  end

  def self.instance
    @game
  end

  def display_players(name=@player)
    name
  end
end
