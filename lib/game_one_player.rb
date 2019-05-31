require './lib/player'
require './lib/game_logic'

class GameOnePlayer
  include GameLogic

  PLAYERS = 1

  attr_reader :player1, :win, :pc_choice

  def initialize(name, player_class = Player)
    @player1 = player_class.new(name)
  end

  def self.create(player_1)
    @game = GameOnePlayer.new(player_1)
  end

  def self.instance
    @game
  end

  def players
    PLAYERS
  end


end




