class Hands

  include Comparable

  WINS = [%w{ ROCK SCISSORS },
          %w{ SCISSORS PAPER },
          %w{ PAPER ROCK }]

def initialize(move)
  @move=move.upcase.to_s
end

def <=>(other)
  if move == other.move
    0
  elsif WINS.include?([move, other.move])
    1
  elsif WINS.include?([other.move, move])
    -1
  else
    raise ArgumentError, "That's not right"
  end
end

def plays(other)
  if other < self
    return self.move.capitalize
  elsif other > self
    return other.move.capitalize
  else
    return "Draw"
  end
end

protected

attr_accessor :move
end 
