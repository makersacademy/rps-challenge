# require_relative 'player'

class Game
  attr_reader :player_name, :player_move, :pc_move, :match

  COMBINATIONS = [ { rock: :scissors },
                   { paper: :rock },
                   { scissors: :paper } ]

  PC_MOVES = [:rock, :paper, :scissors]

  def initialize(player_name, player_move)
    @player_name = player_name
    @player_move = player_move
    @pc_move = PC_MOVES.sample
    @match = { player_move => pc_move }
  end

  def self.create(player_name, player_move)
    @RPS_game = Game.new(player_name, player_move)
  end

  def self.instance
    @RPS_game
  end

  def draw
    player_move == pc_move ? self.au_pair : self.showdown
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
