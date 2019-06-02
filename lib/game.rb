class ComputerGame
  attr_reader :choice, :user_choice

  def initialize
    @choice = ['rock', 'paper', 'scissor'].sample
  end

  def player(user_choice)
    @user_choice = user_choice
  end
  def prints_output
    puts @choice
    puts "*******"
    puts @user_choice
    puts "£££££££"    
  end

  def outcome

    if (@choice == 'rock' && @user_choice == 'scissor')
      com_result
    elsif (@choice == 'scissor' && @user_choice == 'paper')
      com_result
    elsif (@choice == 'paper' && @user_choice == 'rock')
      com_result
    elsif (@choice == 'scissor' && @user_choice == 'rock')
      play_result
    elsif (@choice == 'rock' && @user_choice == 'paper')
      play_result
    elsif (@choice == 'paper' && @user_choice == 'scissor')
      play_result
    else
      draw
    end
  end

  def com_result
    "Computer won!"
  end
  def play_result
    "Player won!"
  end
  def draw
    if com_result = play_result
      "its a draw"
    end
  end
end