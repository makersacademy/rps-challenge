require_relative 'weapon'

class Game

  attr_reader :weapon_one, :weapon_two, :r_p_s, :submitted_weapons

  def initialize(weapon_one, weapon_two)
    @weapon_one = weapon_one
    @weapon_two = weapon_two

    # @player_one = player_one
    # @player_two = player_two
    @submitted_weapons =[] # attr_reader - remove?
    @r_p_s = [:rock, :paper, :scissors]
  end

  def add_submitted_weapons
    @submitted_weapons << weapon_one.choice
    @submitted_weapons << weapon_two.choice
  end

  def evaluate
    if !tie?
      if !rock?
        :scissors
      elsif !scissors?
        :paper
      else
        :rock
      end
    end

  end

  def rock?
    submitted_weapons.include? :rock
  end

  def scissors?
    submitted_weapons.include? :scissors
  end

  def tie?
    submitted_weapons.first == submitted_weapons.last
  end

  def missing_element
    missing_element = @r_p_s - submitted_weapons
    missing_element.first
  end

end
