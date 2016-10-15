require_relative 'weapon'

class Game

  attr_reader :weapon_one, :weapon_two, :r_p_s, :submitted_weapons, :winner

  def self.instnce
    @game
  end

  def initialize(weapon_one, weapon_two)
    @weapon_one = weapon_one
    @weapon_two = weapon_two
    @submitted_weapons =[] # attr_reader - remove?
    @r_p_s = [:rock, :paper, :scissors]
    @winner = nil
  end

  def add_submitted_weapons
    @submitted_weapons << weapon_one.choice
    @submitted_weapons << weapon_two.choice
  end

  def evaluate
    if tie?
      @winner = :tie
    elsif missing_element == :rock
      @winner = :scissors
    elsif missing_element == :scissors
      @winner = :paper
    else
      @winner = :rock
    end
  end

  def tie?
    submitted_weapons.first == submitted_weapons.last
  end

  def missing_element
    missing_element = r_p_s - submitted_weapons
    missing_element.first
  end

end
