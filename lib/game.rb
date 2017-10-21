class Game

  RULES = {
    "Rock" => 'Scissors',
    "Scissors" => 'Paper',
    "Paper" => 'Rock'
  }

def beats_computer?(playermove, counter)
      if playermove == counter
          return :draw
      elsif RULES[playermove] == counter
           return :win
       else
          return :lose
      end
    end

end
