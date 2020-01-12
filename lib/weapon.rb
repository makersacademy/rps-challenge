class Weapon

  RULES = {
    rock: { rock: :Tie, paper: :Loser, scissors: :Winner},
    paper: { rock: :Winner, paper: :Tie, scissors: :Loser},
    scissors: { rock: :Loser, paper: :Winner, scissors: :Tie}
  }

  attr_reader :type

  def initialize(type)
    @type = type.downcase.to_sym
  end

  def beats(other_weapon)
    # other is an another instance of weapon class
    # will return true if follows the RULES hash
    RULES[@type][other_weapon.type]
  end

end
