class Computer

  attr_reader :weapons, :weapon

  # ::???::
  # I don't understand This

  # Then *four* new objects will be created *every time you call `weapons`*  (what are the four objects?).  Use a constant with symbols instead:
  #
  # ```ruby
  # WEAPONS = [:rock, :paper, :scissors]
  # ```

  def initialize
    @weapons = ["rock", "paper", "scissors"]
  end

  def select_weapon
    @weapon = @weapons.sample
  end


end
