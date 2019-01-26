require_relative 'weapon'

class Game

  WEAPONS = [Rock, Paper, Scissors]

  PLAYER_1_WIN_MESSAGE = "Player 1 has won! Congratulations! Bad luck Player 2."
  DRAW_MESSAGE = "Commiserations to both - it's a draw!"
  PLAYER_2_WIN_MESSAGE = "Player 2 has won! Congratulations! Bad luck Player 1."
  ERROR_MESSAGE = "Something has gone wrong with the result calculation (sorry)"

  def self.resolve(p1_weapon, p2_weapon)
    player_1_weapon = convert_string_to_weapon(p1_weapon)
    player_2_weapon = convert_string_to_weapon(p2_weapon)
    @result = player_1_weapon.compare(player_2_weapon)
  end

  def self.convert_string_to_weapon(string)
    weapon = []
    WEAPONS.each { |item| weapon.push(item) if item.name == string }
    weapon.first
  end

  def self.print_result
    generate_result_string(@result)
  end

  def self.reset
    @result = nil
  end

  def self.generate_result_string(result)
    case result
    when :win
      PLAYER_1_WIN_MESSAGE
    when :draw
      DRAW_MESSAGE
    when :lose
      PLAYER_2_WIN_MESSAGE
    else
      ERROR_MESSAGE
    end
  end

end
