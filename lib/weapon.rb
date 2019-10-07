class Weapon

  # PLAYER_WIN_MESSAGE = "Congratulations! You beat the computer."
  # DRAW_MESSAGE = "It's a draw!"
  # COMPUTER_WIN_MESSAGE = "Computer Wins."
  
  # def self.resolve(p_weapon, c_weapon)
  #   player_weapon = convert_string_to_weapon(p_weapon)
  #   computer_weapon = convert_string_to_weapon(c_weapon)
  #   @result = player_weapon.compare(computer_weapon)
  # end

  @wins = []
  @loses = []
  @opponent = ""

  def self.compare(other_weapon)
    @opponent = other_weapon.to_s
    return :draw if draws?
    return :win if wins?
    return :lose if loses?
  end

  def self.wins?
    @wins.include?(@opponent)

  end

  def self.loses?
    @loses.include?(@opponent)
  end

  def self.draws?
    to_s == @opponent
  end

end

class Scissors < Weapon

  @wins = ['Paper']
  @loses = ['Rock']

end

class Paper < Weapon

  @wins = ['Rock']
  @loses = ['Scissors']

end

class Rock < Weapon

  @wins = ['Scissors']
  @loses = ['Paper']

end
