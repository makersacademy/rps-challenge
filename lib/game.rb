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
    @match = { player_move.to_sym => pc_move }
  end

  def self.create(player_name, player_move)
    @RPSgame = Game.new(player_name, player_move)
  end

  def self.instance
    @RPSgame
  end

  def draw
    player_move.to_sym == pc_move ? "It's a Draw!" : showdown
  end

  def showdown
    COMBINATIONS.include?(match) ? "#{player_name} Wins!" : "PC Wins!"
  end

end
