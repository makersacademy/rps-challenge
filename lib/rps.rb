class Rps

  attr_reader :user_input
  
  def user_play(user_input)
    @user_input = user_input
  end 

  def computer_play
    ['ROCK', 'PAPER', 'SCISSORS'].sample
  end 

  def play(user_input)
    user_play(user_input)
    return tie if @user_input == computer_play
    return win if user_win?
    return lose if !user_win?
  end 

  def user_win?
    @user_input == 'ROCK' && computer_play == 'SCISSORS' ||
    @user_input == 'SCISSORS' && computer_play == 'PAPER' ||
    @user_input == 'PAPER' && computer_play == 'ROCK'
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