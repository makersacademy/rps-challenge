require_relative 'player'

class Game

attr_reader :players_name

  def initialize(players_name)
    @players_name = players_name
  end

  def self.create(players_name)
    @game = Game.new(players_name)
  end

  def self.instance
    @game
  end

end
