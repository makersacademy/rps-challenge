class RpsRules

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  RULES = { ['Rock', 'Scissors']  => 'blunts',
            ['Scissors', 'Paper'] => 'cuts',
            ['Paper', 'Rock']     => 'wraps' }

  MORE_WEAPONS = ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock']

  MORE_RULES = { ['Rock', 'Scissors']   => 'blunts',
                 ['Rock', 'Lizard']     => 'crushes',
                 ['Scissors', 'Paper']  => 'cuts',
                 ['Scissors', 'Lizard'] => 'decapitates',
                 ['Paper', 'Rock']      => 'wraps',
                 ['Paper', 'Spock']     => 'disproves',
                 ['Lizard', 'Paper']    => 'eats',
                 ['Lizard', 'Spock']    => 'poisons',
                 ['Spock', 'Scissors']  => 'disassembles',
                 ['Spock', 'Rock']      => 'vapourises'  }

  @weapons_array = WEAPONS
  @rules_hash = RULES

  def self.weapons
    weapons_array.dup
  end

  def self.extend(flag)
    self.weapons_array = flag ? MORE_WEAPONS : WEAPONS
    self.rules_hash = flag ? MORE_RULES : RULES
  end

  def self.check(weapon1, weapon2)
    rules_hash[[weapon1, weapon2]]
  end

  # private class methods

  class << self
    attr_accessor :weapons_array, :rules_hash
  end

  private_class_method :weapons_array, :rules_hash

end
