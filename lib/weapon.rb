class Weapon

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
    self.to_s == @opponent
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
