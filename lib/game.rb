class Game

  def initialize(user, computer) # user is a string representing the choice of the player 
    @user = user              # computer is a string, representing the computer choice 
    @computer = computer
  end 

  
  def computer
    @computer
  end

  def user
    @user
  end

  def winner
    user_no = number(@user.choice)
    comp_no = number(@computer.choice)
    if user_no == comp_no + 1
      return @user.name
    else
      return @computer.name
    end
  end

  def number(option)
    ['rock', 'paper', 'scissors'].find_index(option)
  end

end