class RulesList
  def initialize
    @rules_list = {
      ['Paper', 'Paper'] => 'both players chose paper',
      ['Paper', 'Rock'] => 'paper wraps rock',
      ['Paper', 'Scissors'] => 'scissors cut paper',
      ['Rock', 'Rock'] => 'both players chose rock',
      ['Rock', 'Scissors'] => 'rock blunts scissors',
      ['Scissors', 'Scissors'] => 'both players chose scissors'
    }
  end

  def rule(moves)
    @rules_list[moves.sort]
  end
end