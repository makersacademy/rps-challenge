require_relative 'rules'

class RulesPlus < Rules

  private

  def results
    @results || {
                rock: {scissors: :win, lizard: :win, spock: :lose, paper: :lose, rock: :draw},
                paper: {rock: :win, spock: :win, lizard: :lose, scissors: :lose, paper: :draw},
                scissors: {paper: :win, lizard: :win, rock: :lose, spock: :lose, scissors: :draw},
                lizard: {spock: :win, paper: :win, rock: :lose, scissors: :lose, lizard: :draw},
                spock: {rock: :win, scissors: :win, paper: :lose, lizard: :lose, spock: :draw}
                }
  end

  def moves
    @moves || [:rock, :paper, :scissors, :lizard, :spock]
  end
end