class Player
  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :name, :weapon

  def initialize (name)
    @name = name
  end

  def weapon (weapon)
    fail "You can only select rock, paper or scissors in this game" unless included?(weapon)
    @weapon = weapon
  end

  private

  def included?(weapon)
    WEAPONS.include? weapon  
  end
end
