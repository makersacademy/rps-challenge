require_relative 'beatmap'

class Game

  def initialize(player, computer = Computer.new)
    @players = [player, computer]
  end

  def player
    @players.first
  end

  def computer
    @players.last
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end
end
