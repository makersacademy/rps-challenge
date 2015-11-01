class Player

  attr_reader :name, :player_weapon, :player_choice

  def initialize(name)
    @name = name
  end

  def player_choice(weapon)
    raise 'Invalid choice' unless valid_selection?(weapon)
    @player_weapon = weapon
  end

  private

  def valid_selection?(weapon)
    (Game::RULES.include?(weapon))
  end

end
