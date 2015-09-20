class RPSLS
  def outcomes
    {
    rock: {rock: :tie, paper: :lose, scissors: :win, lizard: :win, spock: :lose},
    paper: {rock: :win, paper: :tie, scissors: :lose, lizard: :lose, spock: :win},
    scissors: {rock: :lose, paper: :win, scissors: :tie, lizard: :win, spock: :lose},
    lizard: {rock: :lose, paper: :win, scissors: :lose, lizard: :tie, spock: :win},
    spock: {rock: :win, paper: :lose, scissors: :win, lizard: :lose, spock: :tie}
  }
  end

  def shapes
    ['rock', 'paper', 'scissors', 'lizard', 'spock']
  end
end
