class Game

  OUTCOME = { 
    rock: { rock: :draw, paper: :lose, scissors: :win, lizard: :win, spock: :lose },
    scissors: { scissors: :draw, rock: :lose, paper: :win, lizard: :win, spock: :lose },
    paper: { paper: :draw, scissors: :lose, rock: :win, spock: :win, lizard: :lose },
    lizard: { lizard: :draw, paper: :win, spock: :win, rock: :lose, scissors: :lose },
    spock:  { spock: :draw, scissors: :win, rock: :win, paper: :lose, lizard: :lose },
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

  def lose?
    result == :lose
  end

  def draw?
    result == :draw
  end
  
  private

  def result
    return if @comp_move.nil?
    OUTCOME[@move][@comp_move]
  end


end