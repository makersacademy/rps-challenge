require_relative './cpu_player'

class Game
  attr_reader :p1, :p2, :win_streak

  WINNING_MOVES = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  def initialize(p1, p2 = CPUPlayer.new)
    @p1 = p1
    @p2 = p2
    @win_streak = 0
  end

  def self.create(p1, p2 = CPUPlayer.new)
    @game = Game.new(p1, p2)
  end

  def self.instance
    @game
  end

  def play
    @result = determine_result
    update_win_streak
    @result
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

  def update_win_streak
    if @result == 'P1'
      @win_streak += 1
    else
      @win_streak = 0
    end
  end
end
