class Game

  attr_reader :player_1

  class << self

    def new_game(player_1)
      @current_game = Game.new(player_1)
    end

    def current_game
      @current_game
    end
    
  end

  def initialize(player_1)
    @player_1 = player_1
    @current_game
  end

end