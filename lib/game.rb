require_relative 'player'
require_relative 'game'

class Game

  attr_reader :player_1, :move

  winning_moves = {rock: :scissors, paper: :rock, scissors: :paper}

  def initialize(player_1)
    @player_1 = player_1
    @move = nil
  end

  def player_selection(player_move)
    @move = player_move
    @move
  end

end