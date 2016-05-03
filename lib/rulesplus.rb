require_relative 'rules'

class RulesPlus < Rules
  MOVES = [:rock, :paper, :scissors, :lizard, :spock]
  RESULTS = {
              rock: {scissors: :win, lizard: :win, spock: :lose, paper: :lose, rock: :draw},
              paper: {rock: :win, spock: :win, lizard: :lose, scissors: :lose, paper: :draw},
              scissors: {paper: :win, lizard: :win, rock: :lose, spock: :lose, scissors: :draw},
              lizard: {spock: :win, paper: :win, rock: :lose, scissors: :lose, lizard: :draw},
              spock: {rock: :win, scissors: :win, paper: :lose, lizard: :lose, spock: :draw}
            }

  private

  def results
    RESULTS
  end

  def moves
    MOVES
  end

end