
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
    return 'Draw' if user_weapon == computer_weapon
    return 'You win' if RULES[user_weapon] == computer_weapon
    'You lose'
  end

  private

  attr_reader :weapons

end
