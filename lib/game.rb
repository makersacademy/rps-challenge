class Game

  OUTCOME = { 
    rock: {rock: :draw, paper: :lose, scissors: :win},
    scissors: {scissors: :draw, rock: :lose, paper: :win},
    paper: {paper: :draw, scissors: :lose, rock: :win}
  
  }

  attr_reader :player, :move, :comp_move

  def initialize(session_values)
    @player = session_values['player']
    @move = session_values['move']
    @comp_move = session_values['comp_move']
  end

  def win?
    result == :win
  end

  private

  def result
    return if @comp_move.nil?
    OUTCOME[@move][@comp_move]
  end


end