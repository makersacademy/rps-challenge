class Game
  WEAPONS = [:rock, :paper, :scissors, :spock, :lizard]
  RULES = { rock: [:scissors, :lizard],
          paper: [:rock, :spock],
          scissors: [:paper, :lizard],
          lizard: [:paper, :spock],
          spock: [:rock, :scissors] }

  attr_reader :p1, :p2, :p1_weapon, :p2_weapon
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @p1_weapon = @p1.weapon
    @p2_weapon = @p2.weapon
  end

  def self.start(p1, p2)
    @current_game = Game.new(p1, p2)
  end

  class << self
    attr_reader :current_game
  end

  def result
    return :draw if @p1_weapon == @p2_weapon
    return :win if beats?(@p1_weapon, @p2_weapon)
    :lose
  end

  private

  def beats?(weapon_1, weapon_2)
    RULES[weapon_1].include? weapon_2
  end
end
