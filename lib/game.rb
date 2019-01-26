require_relative 'weapon'

class Game

  WEAPONS = [Rock, Paper, Scissors]

  COMPUTER_WIN_MESSAGE = "The computer has won! Better luck next time!"
  DRAW_MESSAGE = "You have drawn with the computer! Almost there..."
  COMPUTER_LOSE_MESSAGE = "You have beaten the computer! Congratulations!"
  ERROR_MESSAGE = "Something has gone wrong with the result calculation (sorry!)."

  def self.resolve(player_1_weapon, player_2_weapon = player_two_weapon)
    @result = player_2_weapon.compare(player_1_weapon)
  end

  def self.print_result
    generate_result_string(@result)
  end

  def self.player_two_weapon
    @weapon || generate_weapon
  end

  def self.reset
    @weapon, @result = nil
  end

  private_class_method

  def self.generate_result_string(result)
    case result
    when :win
      COMPUTER_WIN_MESSAGE
    when :draw
      DRAW_MESSAGE
    when :lose
      COMPUTER_LOSE_MESSAGE
    else
      ERROR_MESSAGE
    end
  end

  def self.generate_weapon
    @weapon = WEAPONS.sample
  end

end
