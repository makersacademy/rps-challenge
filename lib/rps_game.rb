class RpsGame

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  RULES = { ['Rock', 'Scissors']  => 'blunts',
            ['Scissors', 'Paper'] => 'cuts',
            ['Paper', 'Rock']     => 'wraps' }

  attr_reader :weapons, :setup, :results

  def initialize(name = 'Player')
    @weapons = WEAPONS
    @rules = RULES
    @setup = { player: name, player_weapon: nil, computer_weapon: nil }
    @results = { winner: nil, report: nil }
  end

  def choose_player_weapon(choice)
    self.setup[:player_weapon] = choice
  end

  def choose_computer_weapon
    self.setup[:computer_weapon] = weapons.sample
  end

  def play
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

  attr_reader :rules
  attr_writer :setup

  def report(name, message)
    @results[:winner] = name
    @results[:report] = message
  end

end
