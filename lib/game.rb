class Game
  attr_reader :p1, :p2

  WINNING_MOVES = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  def initialize(p1, p2 = nil)
    @p1 = p1
    @p2 = p2
  end

  def self.create(p1, p2 = nil)
    @game = Game.new(p1, p2)
  end

  def self.instance
    @game
  end

  def play(move1, move2 = random_move)
    @p1_move = move1
    @p2_move = move2
    @result = determine_result
  end

  private

  def random_move
    ['rock', 'paper', 'scissors'].sample
  end

  def determine_result
    if WINNING_MOVES[@p1_move.to_sym] == @p2_move.to_sym
      'P1'
    elsif @p1_move == @p2_move
      'DRAW'
    else
      'P2'
    end
  end
end
