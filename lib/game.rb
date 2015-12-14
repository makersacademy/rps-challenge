class Game

  attr_reader :user_weapon, :computer_weapon

  def initialize(user_weapon, computer_weapon)
    @user_weapon = user_weapon
    @computer_weapon = computer_weapon
  end

  def result
    if @user_weapon.to_s == 'rock'
      if @computer_weapon.to_s == 'rock'
        return 'It\'s a draw!'
      elsif @computer_weapon.to_s == 'paper'
        return 'Computer wins!'
      elsif @computer_weapon.to_s == 'scissors'
        return 'You win!'
      end
    elsif @user_weapon.to_s == 'paper'
      if @computer_weapon.to_s == 'rock'
        return 'You win!'
      elsif @computer_weapon.to_s == 'paper'
        return 'It\'s a draw!'
      elsif @computer_weapon.to_s == 'scissors'
        return 'Computer wins!'
      end
    elsif @user_weapon.to_s == 'scissors'
      if @computer_weapon.to_s == 'rock'
        return 'Computer wins!'
      elsif @computer_weapon.to_s == 'paper'
        return 'You win!'
      elsif @computer_weapon.to_s == 'scissors'
        return 'It\'s a draw!'
      end
    end
  end

end
