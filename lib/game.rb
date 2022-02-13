class Game
    attr_reader :name, :player_shape, :rand_shape

  def initialize(session)
    @name = session[:player_name]
    @player_shape = session[:shape]
    @rand_shape = session[:rand_shape]
  end

  def game_result
    if (@player_shape == "Rock" && @rand_shape =="Paper") ||
        (@player_shape == "Paper" && @rand_shape =="Scissors") ||
        (@player_shape == "Scissors" && @rand_shape =="Rock")
        return "Computer wins"
    elsif (@player_shape == "Paper" && @rand_shape =="Rock") ||
         (@player_shape == "Scissors" && @rand_shape =="Paper") ||
         (@player_shape == "Rock" && @rand_shape =="Scissors")
         return "You win"
    else
        return "Draw"
    end
    end
    
end
