class Game

  attr_reader :user_weapon, :computer_weapon

  def initialize(user_weapon, computer_weapon)
    @user_weapon = user_weapon
    @computer_weapon = computer_weapon
    @rules = { rock: :scissors, paper: :rock, scissors: :paper }
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


  # def result
  # 	return 'It\'s a draw!' if @user_weapon == @computer_weapon
  # 	@rules[@user_weapon] == @computer_weapon ? 'You win!' : 'Computer wins!'
  # end



  # def result
  #   'It\'s a draw!' if draw
  #   'Computer wins!' if computer_wins
  #   'You win!' if user_wins
  # end
  #
  # def user_wins
  # end
  #
  # def computer_wins
  # end
  #
  # def draw
  #   @user_weapon == @computer_weapon
  # end
end
