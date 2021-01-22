class Go
  RULES = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw }
  }

  attr_reader :name, :move, :computer_move

  def initialize(sessions)
    @name = sessions[:name]
    @move = sessions[:move]
    @computer_move = sessions[:computer_move]
  end

  def win?
    result == :win
  end

  def result
    return if @computer_move.nil?
    RULES[@move][@computer_move]
  end
end
