class Comp
  attr_reader :comp_selection

  def initialize
    @comp_selection = ["Rock", "Paper", "Scissors"].sample
  end
end

class Rules
RULES = {
  Rock: {Rock: 'draw', Paper: 'lose', Scissors: 'win'},
  Paper: {Rock: 'win', Paper: 'draw', Scissors: 'lose'},
  Scissors: {Rock: 'lose', Paper: 'win', Scissors: 'draw'}
}
end
