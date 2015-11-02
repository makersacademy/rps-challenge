
class Game

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize (user_weapon, computer_weapon)
    @user_weapon = user_weapon
    @computer_weapon = computer_weapon
  end

  def play_game
    if user_weapon == computer_weapon
      'Draw'
    elsif RULES[user_weapon] == computer_weapon
      'You win'
    else
      'You lose'
    end
  end

  private

  attr_reader :user_weapon, :computer_weapon

end
