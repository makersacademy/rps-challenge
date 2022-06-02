class Game
  attr_accessor :computer, :user

  def initialize(user, computer) # user is a string representing the choice of the player 
    @user = user              # computer is a string, representing the computer choice 
    @computer = computer
  end 

  def winner
    return nil if @user.choice == @computer.choice
    options = ['rock', 'paper', 'scissors']
    user_no = options.find_index(@user.choice)
    options[user_no - 1] == @computer.choice
  end
end
