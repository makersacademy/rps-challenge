require_relative 'weapon'

class Game

  WEAPONS = [Rock, Paper, Scissors]

  COMPUTER_WIN_MESSAGE = "The computer has won! Better luck next time!"
  DRAW_MESSAGE = "You have drawn with the computer! Almost there..."
  COMPUTER_LOSE_MESSAGE = "You have beaten the computer! Congratulations!"
  ERROR_MESSAGE = "Something has gone wrong with the result calculation (sorry!)."

  def self.choose_weapon
    @player_two_weapon = WEAPONS.sample

  end

  def self.resolve(player_1_weapon)
    @result = @player_two_weapon.compare(player_1_weapon)
  end

  def self.print_result
    generate_result_string(@result) unless @result.nil?
  end

  private

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

end