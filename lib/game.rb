require_relative 'player'

class Game

  attr_reader :player

  class << self
    attr_reader :instance

    def create(name)
      @instance = new(name)
    end
  end

  def initialize(name, player_class = Player)
    @player_class   = player_class
    @player         = player_class.new(name)
  end

  private

  attr_reader :player_class

end
