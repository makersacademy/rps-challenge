
class Game
  @computer = ['rock','paper','scissor'].sample

  def initialize(player_1, random_choice = @computer)
    @player_1 = player_1
    @random_choice = random_choice
  end

  def player
    @player_1
  end
  
  def win
    if @player_1 == 'rock' && @random_choice == 'scissor' ||
    @player_1 == 'paper' && @random_choice == 'rock' || 
    @player_1 == 'scissor' && @random_choice == 'paper'
      return 'win'
    end
  end
  
  def lose
    if @random_choice == 'rock' && @player_1 == 'scissor' ||
      @random_choice == 'paper' && @player_1 == 'rock' ||
      @random_choice == 'scissor' && @player_1 == 'paper'
      return 'lose'
    end
  end

  def draw
    if @player_1 == 'rock' && @random_choice == 'rock' ||
       @player_1 == 'scissor' && @random_choice == 'scissor' ||
       @player_1 == 'paper' && @random_choice == 'paper'
      return 'draw'
    end
  end
  
  def random_pick
    @computer = ['rock','paper','scissor'].sample
  end
end

