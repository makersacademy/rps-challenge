class Game

  MOVES_VAL = { ROCK:     0,
                SPOCK:    1,
                PAPER:    2,
                LIZARD:   3,
                SCISSORS: 4
                }

  attr_reader :p1, :p2, :in_game

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @in_game = true
  end

  def return_winner
    move_to_val
    return 'draw' if @p1_val == @p2_val
    p1_win? ? @p1 : @p2
  end

  def update_score
    move_to_val
    unless @p1_val == @p2_val
      p1_win? ? @p1.gain_score : @p2.gain_score
    end
  end

  def begin_game
    @in_game = true
  end

  def end_game
    @in_game = false
  end

  private

  def move_to_val
    @p1_sym = p1.move.to_sym
    @p2_sym = p2.move.to_sym
    @p1_val = MOVES_VAL[@p1_sym]
    @p2_val = MOVES_VAL[@p2_sym]
  end

  def p1_win?
    diff = (@p1_val - @p2_val) % 5
    diff == 1 || diff == 2
  end
end
