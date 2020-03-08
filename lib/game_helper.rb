class Gamehelper

  RULES = { rock: { rock: :draw, paper: :lose, scissors: :win },
  paper: { rock: :win, paper: :draw, scissors: :lose },
  scissors: { rock: :lose, paper: :win, scissors: :draw }
        }
  def self.decision(user_move, opponent_move)
    RULES[user_move][opponent_move]
  end 

  def self.random 
    [:rock, :paper, :scissors].sample  
  end  

end
