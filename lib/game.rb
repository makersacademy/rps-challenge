class Game
  attr_reader :player_name, :player_weapon, :computer_weapon
  def initialize(name)
    @player_name = name
    @matrix = {rock: :scissors,
               scissors: :paper,
               paper: :rock}
  end

  def choose_weapon(weapon)
    @player_weapon = weapon.to_sym
  end

  def rand_computer_weapon
    @computer_weapon = [:rock, :paper, :scissors].sample
  end

  def game_even?
    player_weapon == computer_weapon
  end
  def player_wins?
    @matrix[player_weapon] == computer_weapon
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end
end
