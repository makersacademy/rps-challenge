class Game

  attr_reader :player_1, :player_2

  def initialize (player_1 = Randomiser.new, player_2 = Randomiser.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  # def decide_winner
  #   case "#{@player_1} wins"
  #   when @player_1_result == 'rock' && @player_2_result == 'paper' 
      
  # end


  #   @player_1_result = @player_1.randomise
  #   @player_2_result = @player_2.randomise
  # end

end