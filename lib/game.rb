require_relative 'choice'
require_relative 'computer'




class Game 
  

  RULES = {
    rock: { rock: :draw, paper: :lose, scissors: :win },
    paper: { rock: :win, paper: :draw, scissors: :lose },
    scissors: { rock: :lose, paper: :win, scissors: :draw }
  }
  
  def win?
    RULES[:paper][:rock] == :win
  end



end