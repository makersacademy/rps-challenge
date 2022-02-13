
class Game
    attr_reader :name, :player_shape, :computer_move 
    def initialize(session)
     @name = session[:player1]
     @player_shape = session[:shape]
     @computer_move = session[:computer_move]
    end


def gameoutcome
if (@player_shape == "Rock" and @computer_move =="Paper") or 
    (@player_shape == "Paper" and @computer_move =="Scissors") or 
    (@player_shape == "Scissors" and @computer_move =="Rock")
    return "Computer wins"

elsif (@player_shape == "Paper" and @computer_move =="Rock") or 
     (@player_shape == "Scissors" and @computer_move =="Paper") or 
     (@player_shape == "Rock" and @computer_move =="Scissors")
     return "You win"

else

    return "Draw"

end

end



end

