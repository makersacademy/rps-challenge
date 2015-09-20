class RpsGame

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

  @weapons = WEAPONS
  @rules = RULES
  @setup = { player: 'Player', scores: [0,0], extended: false,
             player_weapon: 'Rock', computer_weapon: 'Rock' }
  @results = { winner: nil, report: 'Rock meets Rock' }

  class << self
    attr_reader :weapons, :setup, :results, :extended
    private
    attr_reader :rules
    attr_writer :setup, :results, :extended
  end

  def self.reset_scores
    self.setup[:scores] = [0,0]
  end

  def self.enable_extended(flag)
    self.setup[:extended] = flag
    @weapons = flag ? MORE_WEAPONS : WEAPONS
    @rules = flag ? MORE_RULES : RULES
  end

  def self.choose_player(name)
    self.setup[:player] = name
  end

  def self.choose_player_weapon(choice)
    self.setup[:player_weapon] = choice
  end

  def self.choose_computer_weapon
    self.setup[:computer_weapon] = weapons.sample
  end

  def self.play
    weapon1 = setup[:player_weapon]
    weapon2 = setup[:computer_weapon]
    message1 = rules[[weapon1, weapon2]]
    message2 = rules[[weapon2, weapon1]]
    write_report(weapon1, weapon2, message1, message2)
    update_scores(results[:winner])
    results
  end

  # private class methods

  def self.write_report(weapon1, weapon2, message1, message2)
    if message1
      report setup[:player], "#{weapon1} #{message1} #{weapon2}"
    elsif message2
      report 'Computer', "#{weapon2} #{message2} #{weapon1}"
    else
      report nil, "#{weapon1} meets #{weapon2}"
    end
  end

  def self.report(name, message)
    results[:winner] = name
    results[:report] = message
  end

  def self.update_scores(winner)
    self.setup[:scores][0] += (winner == setup[:player] ? 1 : 0)
    self.setup[:scores][1] += (winner == 'Computer' ? 1 : 0)
  end

  private_class_method :write_report, :report, :update_scores

end
