class Game

  attr_reader :player_one, :player_two, :r_p_s

  def initialize(player_one, player_two=:the_computer)
    @player_one = player_one
    @player_two = player_two
    @r_p_s = [:rock, :paper, :scissors]

  end

  def evaluate(submitted_weapons)
    if !tie?(submitted_weapons)
      if !rock?(submitted_weapons)
        :scissors
      elsif !scissors?(submitted_weapons)
        :paper
      else
        :rock
      end
    end

  end

  def rock?(submitted_weapons)
    submitted_weapons.include? :rock
  end

  def scissors?(submitted_weapons)
    submitted_weapons.include? :scissors
  end

  def tie?(submitted_weapons)
    submitted_weapons.first == submitted_weapons.last
  end

  def missing_element(submitted_weapons)
    missing_element = @r_p_s - submitted_weapons
    missing_element.first
  end

end
