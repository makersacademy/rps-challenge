class Weapon

attr_reader :valid_weapons, :player_choice

  def initialize(player_choice)
    @player_choice = player_choice.to_sym
    @valid_weapons = [:rock, :paper, :scissors]
  end

  def valid?
    valid_weapons.include? player_choice
  end
end
