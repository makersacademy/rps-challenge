class Weapon

  @wins = []
  @loses = []

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
    name.to_s == @opponent
  end

end

class Scissors < Weapon
  @wins = %w[Paper Lizard]
  @loses = %w[Rock Spock]
end

class Paper < Weapon
  @wins = %w[Rock Spock]
  @loses = %w[Scissors Lizard]
end

class Rock < Weapon
  @wins = %w[Scissors Lizard]
  @loses = %w[Paper Spock]
end

class Lizard < Weapon
  @wins = %w[Spock Paper]
  @loses = %w[Rock Scissors]
end

class Spock < Weapon
  @wins = %w[Scissors Rock]
  @loses = %w[Lizard Paper]
end
