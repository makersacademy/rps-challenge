class Player

  DEFAULT_MOVE = :rock

  attr_reader :name, :valid_moves
  attr_accessor :final_move, :win_counter

  def initialize(name)
    @name = name
    @valid_moves = [:rock, :paper, :scissors]
    @win_counter = 0
    @final_move = DEFAULT_MOVE
  end

  def choose(move)
    fail 'Sorry, that is not a valid move' unless legitimate(move)
    @final_move = move
  end

  def wins
    @win_counter += 1
  end

  private

  def legitimate(move)
    valid_moves.include?(move.downcase)
  end

end