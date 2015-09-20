class RpsGame

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  RULES = { ['Rock', 'Scissors']  => 'blunts',
            ['Scissors', 'Paper'] => 'cuts',
            ['Paper', 'Rock']     => 'wraps' }

  @weapons = WEAPONS
  @rules = RULES
  @setup = { player: 'Player', player_weapon: nil, computer_weapon: nil }
  @results = { winner: nil, report: nil }

  class << self
    attr_reader :weapons, :setup, :results
  end

  def self.set_player(name)
    self.setup[:player] = name
  end

  def self.choose_player_weapon(choice)
    self.setup[:player_weapon] = choice
  end

  def self.choose_computer_weapon
    self.setup[:computer_weapon] = weapons.sample
  end

  def self.play
    player_weapon = setup[:player_weapon]
    computer_weapon = setup[:computer_weapon]
    if player_weapon == computer_weapon
      report nil, "#{player_weapon} meets #{computer_weapon}"
    end
    if rules.include? [player_weapon, computer_weapon]
      report setup[:player], "#{player_weapon} #{rules[[player_weapon, computer_weapon]]} #{computer_weapon}"
    end
    if rules.include? [computer_weapon, player_weapon]
      report 'Computer', "#{computer_weapon} #{rules[[computer_weapon, player_weapon]]} #{player_weapon}"
    end
    return results
  end

  private

  class << self
    attr_reader :rules
    attr_writer :setup
  end

  def self.report(name, message)
    @results[:winner] = name
    @results[:report] = message
  end

end
