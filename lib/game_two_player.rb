require './lib/player'
require './lib/game_logic'

class GameTwoPlayer
  include GameLogic

  PLAYERS = 2

  attr_reader :player1, :player2, :win

  def initialize(name1, name2, player_class = Player)
    @player1 = player_class.new(name1)
    @player2 = player_class.new(name2)
  end

  def players
    PLAYERS
  end

end




