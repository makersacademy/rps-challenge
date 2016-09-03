class Hands
  include Comparable
  WINS=[%w{ ROCK SCISSORS }, %w{ SCISSORS PAPER }, %w{ PAPER ROCK }, %w{ SPOCK ROCK },
        %w{ SPOCK SCISSORS }, %w{ SPOCK ROCK }, %w{ PAPER SPOCK }, %w{ LIZARD SPOCK },
        %w{ LIZARD PAPER }, %w{ ROCK LIZARD }, %w{ SCISSORS LIZARD },]

  def initialize(move)
    @move=move.upcase.to_s
  end

  def plays(other)
    if other < self
      return :win
    elsif other > self
      return :loss
    else
      return :draw
    end
  end

  protected

  attr_accessor :move

  private

  def <=>(other)
    begin
      if move == other.move
        0
      elsif WINS.include?([move, other.move])
        1
      elsif WINS.include?([other.move, move])
        -1
      else
        raise ArgumentError, "Something's wrong"
      end
    rescue
    end
  end

end
