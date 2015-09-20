class RpsGame

  WEAPONS = ['Rock', 'Paper', 'Scissors']

  RULES = { ['Rock', 'Scissors']  => 'blunts',
            ['Scissors', 'Paper'] => 'cuts',
            ['Paper', 'Rock']     => 'wraps' }

  @weapons = WEAPONS
  @rules = RULES
  @setup = { player: 'Player', player_weapon: 'Rock', computer_weapon: 'Rock' }
  @results = { winner: nil, report: 'Rock meets Rock' }

  class << self
    attr_reader :weapons, :setup, :results
    private
    attr_reader :rules
    attr_writer :setup
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
    player_weapon = setup[:player_weapon]
    computer_weapon = setup[:computer_weapon]
    message1 = rules[[player_weapon, computer_weapon]]
    message2 = rules[[computer_weapon, player_weapon]]
    if message1
      report setup[:player], "#{player_weapon} #{message1} #{computer_weapon}"
    elsif message2
      report 'Computer', "#{computer_weapon} #{message2} #{player_weapon}"
    else
      report nil, "#{player_weapon} meets #{computer_weapon}"
    end
    results
  end

  def self.report(name, message)
    @results[:winner] = name
    @results[:report] = message
  end

  private_class_method :report

end
