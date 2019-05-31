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

  def self.create(player_1, player_2)
    @game = GameTwoPlayer.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def players
    PLAYERS
  end

end




