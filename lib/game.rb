

class Game

  def self.build(player_1, player_2)
    @game = self.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result
    draw? ? :draw : winner
  end

  def select_player_1_weapon(weapon)
    player_1.weapon_choice(weapon)
  end

  def select_player_2_weapon(weapon = nil)
    player_2.weapon_choice(weapon)
  end

  private
  RULES = { rock: [:scissors],
    paper: [:rock],
    scissors: [:paper]}

  def beats?
    RULES[player_1.weapon].include?(player_2.weapon)
  end

  def draw?
    player_1.weapon == player_2.weapon
  end

  def winner
    beats? ? @player_1 : @player_2
  end
end
