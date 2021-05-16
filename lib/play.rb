class Play

  OUTCOME = {
    rock: { rock: :draw, paper: :lose, scissors: :win, lizard: :win, spock: :lose },
    paper: { rock: :win, paper: :draw, scissors: :lose, spock: :win, lizard: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw, spock: :lose, lizard: :win },
    lizard: { rock: :lose, paper: :win, scissors: :lose, spock: :win, lizard: :draw },
    spock: { rock: :win, paper: :lose, scissors: :win, spock: :draw, lizard: :lose }
}
  attr_accessor :name, :choice, :comp_choice

  def initialize(choices)
    @name = choices["name"]
    @choice = choices["choice"]
    @comp_choice = choices["comp_choice"]
  end

  def win?
    outcome == :win
  end

  def draw?
    outcome == :draw
  end

  def lose?
    outcome == :lose
  end

  def outcome 
    return if @comp_choice.nil?

    OUTCOME[@choice][@comp_choice]
  end

end
