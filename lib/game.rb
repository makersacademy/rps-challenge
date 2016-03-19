class Game

  MOVES_VAL = { SCISSORS: 1,
                PAPER:    2,
                ROCK:     3,
                LIZARD:   4,
                SPOCK:    5
                }

  attr_reader :p1, :p2

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def return_winner
    move_to_val
    return 'tie' if @p1_val == @p2_val
    ( (@p1_val - @p2_val).abs % 5 == 1 || 3 ) ? @p1 : @p2
  end

  private

  def move_to_val
    @p1_sym = p1.move.to_sym
    @p2_sym = p2.move.to_sym
    @p1_val = MOVES_VAL[@p1_sym]
    @p2_val = MOVES_VAL[@p2_sym]
  end
end
