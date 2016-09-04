# Understands how to rank Rock Paper Scissor Hands
class Hands
  include Comparable
  WINS=[[:ROCK, :SCISSORS], [:SCISSORS, :PAPER], [:PAPER, :ROCK], [:SPOCK, :ROCK],
        [:SPOCK, :SCISSORS], [:SPOCK, :ROCK], [:PAPER, :SPOCK], [:LIZARD, :SPOCK],
        [:LIZARD, :PAPER], [:ROCK, :LIZARD], [:SCISSORS, :LIZARD]]

  def initialize(move)
    @move = move.upcase.to_sym
  end

  def plays(other)
    return :win if other < self
    return :loss if other > self
    return :draw
  end

  protected

  attr_accessor :move

  private

  def <=>(other)
    begin
      return 0 if move == other.move
      return 1 if WINS.include?([move, other.move])
      return -1 if WINS.include?([other.move, move])
    rescue
      raise ArgumentError, "Something's wrong"
    end
  end

end
