require_relative 'player'
class Game

  attr_reader :player1

  def self.create(player1)
    @game = Game.new(player1)
  end
  def self.game_in_play
    @game
  end
end