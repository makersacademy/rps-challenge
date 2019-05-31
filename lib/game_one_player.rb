require './lib/player'
require './lib/game_logic'

class GameOnePlayer
  include GameLogic

  PLAYERS = 1

  attr_reader :player1, :win, :player1s_choice, :player2s_choice

  def initialize(name, player_class = Player)
    @player1 = player_class.new(name)
  end

  def players
    PLAYERS
  end


end




