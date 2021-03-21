class Rps

  attr_reader :user_input, :computer

  def user_play(user_input)
    @user_input = user_input
  end
  
  def computer_play
    @computer = ['ROCK', 'PAPER', 'SCISSORS'].sample
  end 

  def play(user_input)
    user_play(user_input)
    computer_play
    return tie if @user_input == @computer
    return win if user_win?
    return lose unless user_win?
  end 

  def user_win?
    @user_input == 'ROCK' && @computer == 'SCISSORS' ||
    @user_input == 'SCISSORS' && @computer == 'PAPER' ||
    @user_input == 'PAPER' && @computer == 'ROCK'
  end

  private

  def tie 
    return "It is a tie!"
  end 

  def win 
    return "You won!"
  end 

  def lose
    return "You lost!"
  end 

end 
