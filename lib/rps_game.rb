require 'rps_player'

class Game

  @game

  def self.new_game(player, computer)
    @game = Game.new(player, computer)
    @game
  end

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.start
    @game
  end

  # def win?
  # end

end
