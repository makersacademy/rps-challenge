class Player
  attr_reader :name, :points, :weapon

  def initialize(name)
    @name = name
    @points = 0
    @weapon = nil
  end

  def win_a_point
    @points += 1
  end

  def weapon_choice(weapon)
    if @name == "Bot"
      @weapon = ["Rock", "Paper", "Scissors"].sample
    else
      @weapon = weapon
    end
  end
end
