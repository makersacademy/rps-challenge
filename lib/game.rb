require_relative './cpu_player'

class Game
  attr_reader :p1, :p2

  WINNING_MOVES = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  def initialize(p1, p2 = CPUPlayer.new)
    @p1 = p1
    @p2 = p2
  end

  def self.create(p1, p2 = CPUPlayer.new)
    @game = Game.new(p1, p2)
  end

  def self.instance
    @game
  end

  def play
    @result = determine_result
  end

  private

  def determine_result
    if WINNING_MOVES[@p1.move.to_sym] == @p2.move.to_sym
      'P1'
    elsif @p1.move == @p2.move
      'DRAW'
    else
      'P2'
    end
  end
end

