class ComputerGame
  attr_reader :choice, :user_choice

  def initialize
    @choice = ['rock', 'paper', 'scissor']
  end

  def choice
    @choice.sample
  end

  def player(user_choice)
    @user_choice = user_choice
  end

  def outcome
    puts "*******"
    puts choice
    puts "*****"
    puts user_choice
    puts "^^^^^"

    if choice == 'rock' && user_choice == 'scissor'
      then result
    elsif choice == 'scissor' && user_choice == 'paper'
      then result
    elsif choice == 'paper' && user_choice == 'rock'
      then result
    elsif choice == user_choice
      then puts "Its a draw!"
    else
      puts "player won!"
    end
  end

  def result
    'Computer won!'
  end
end