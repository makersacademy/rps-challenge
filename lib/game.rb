
class Game
  @computer = ['rock','paper','scissor'].sample
  
  def initialize(player_1)
    @player_1 = player_1
  end
  
  def win
    if @player_1 == 'rock' && @computer == 'paper' or @player_1 == 'paper' && @computer == 'rock'|| 
    @player_1 == 'scissor' && @computer == 'paper'
      @player_1
    else
      return @computer
    end
  end
    
    # def draw
    #     if @player == computer
    #         "Draw"
    #     end
    # end
end

