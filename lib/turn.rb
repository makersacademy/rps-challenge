class Turn
  
  RULES = { 
    rock:     {rock: :draw, paper: :lose, scissors: :win, lizard: :win, spock: :lose},
    paper:    {rock: :win, paper: :draw, scissors: :lose, lizard: :lose, spock: :win},
    scissors: {rock: :lose, paper: :win, scissors: :draw, lizard: :win, spock: :lose},
    lizard:   {rock: :lose, paper: :win, scissors: :lose, lizard: :draw, spock: :win},
    spock:    {rock: :win, paper: :lose, scissors: :win, lizard: :lose, spock: :draw}
  }
  
  attr_reader :player_name, :player_choice, :opponent_choice
  
  def initialize(options)
    @player_name = options["player_name"]
    @player_choice = options["player_choice"]
    @opponent_choice = options["opponent_choice"]
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
    return if @opponent_choice.nil?
    RULES[@player_choice][@opponent_choice]
  end
end