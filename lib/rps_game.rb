class RpsGame

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  RULES = { ['Rock', 'Scissors']  => 'blunts',
            ['Scissors', 'Paper'] => 'cuts',
            ['Paper', 'Rock']     => 'wraps' }

  attr_reader :weapons, :player_name, :player_weapon, :computer_weapon, :results

  def initialize(player_name = 'Player')
    @weapons = WEAPONS
    @rules = RULES
    @player_name = player_name
    @player_weapon = nil
    @computer_weapon = nil
    @results = { winner: nil, report: nil }
  end

  def choose_player_weapon(choice)
    self.player_weapon = choice
  end

  def choose_computer_weapon
    self.computer_weapon = weapons[rand(3)]
  end

  def play
    if player_weapon == computer_weapon
      report "#{player_weapon} meets #{computer_weapon}"
    end
    if rules.include? [player_weapon, computer_weapon]
      report "#{player_weapon} #{rules[[player_weapon, computer_weapon]]} #{computer_weapon}"
    end
    if rules.include? [computer_weapon, player_weapon]
      report "#{computer_weapon} #{rules[[computer_weapon, player_weapon]]} #{player_weapon}"
    end
    return results
  end

  private

  attr_reader :rules
  attr_writer :player_weapon, :computer_weapon

  def report(message)
    @results[:report] = message
  end

end
