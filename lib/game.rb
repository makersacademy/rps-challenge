require_relative 'player'

class Game
  attr_reader :player, :player_move, :pc_move, :match

  COMBINATIONS = [ { rock: :scissors },
                   { paper: :rock },
                   { scissors: :paper } ]

  PC_MOVES = [:rock, :paper, :scissors]

  def initialize(player)
    @player = player
    @player_move = player.move
    @pc_move = PC_MOVES.sample
    @match = { player_move => pc_move }
  end

  def draw
    player_move == pc_move ? au_pair : showdown
  end

  def showdown
    COMBINATIONS.include?(match) ? self.player_wins : self.pc_wins
  end

  def au_pair
    "It's a draw!"
  end

  def player_wins
    "Player wins!"
  end

  def pc_wins
    "PC wins!"
  end

end
