class ComputerPlayer

  attr_reader :valid_moves
  attr_accessor :final_move, :win_counter

  def initialize
    @valid_moves = [:rock, :paper, :scissors]
    @win_counter = 0
  end

  def randomly_choose
    @final_move = valid_moves.sample
  end

  def wins
    @win_counter += 1
  end

end