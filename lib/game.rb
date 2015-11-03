
class Game

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize (user_weapon, computer_weapon)
    @weapons = [user_weapon, computer_weapon]
  end

  def user_weapon
    weapons.first
  end

  def computer_weapon
    weapons.last
  end

  def play_game
    return :draw if user_weapon == computer_weapon
    return :win if RULES[user_weapon] == computer_weapon
    :lose
  end

  private

  attr_reader :weapons

end
