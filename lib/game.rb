require_relative 'player'

class Game
  class << self
    attr_reader :current_game

    def start(player)
      @current_game = Game.new(player)
    end
  end

  def initialize(player)
    @player = player
  end

  attr_reader :player
end
