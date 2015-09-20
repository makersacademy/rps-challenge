class Game

  attr_reader :player_1, :player_2

  BEATS = {scissors: :paper,
           paper: :rock,
           rock: :scissors}


  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end


  def play
    player_1_throw = player_1.return_throw
    player_2_throw = player_2.return_throw
    if BEATS[player_1_throw] == player_2_throw
      player_1.win!
      return "Congratulations, #{player_1.name} won this game! #{player_1.name} played #{player_1_throw}, #{player_2.name} played #{player_2_throw}."
    elsif player_1_throw == player_2_throw
      return "Oh, this is a draw! #{player_1.name} played #{player_1_throw}, #{player_2.name} played #{player_2_throw}."
    else
      player_2.win!
      return "Sorry, #{player_1.name} lost this game! #{player_1.name} played #{player_1_throw}, #{player_2.name} played #{player_2_throw}."
    end
  end


  # def player_1
  #   @player_1
  # end

  # def player_2
  #   @player_2
  # end

end



