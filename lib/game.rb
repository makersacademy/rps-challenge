require_relative 'game_result'

class Game

  attr_reader :player, :choice

  def initialize(player)
    @player = player
    @choice = nil
  end

  def self.new_game(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def pick_option
    num = Kernel.rand(1..3)
    @choice = 'Rock' if num == 1
    @choice = 'Paper' if num == 2
    @choice = 'Scissors' if num == 3
  end

  def result
    GameResult.calculate(@player.choice, choice)
  end

end
