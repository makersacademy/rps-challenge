class Player
  attr_reader :name, :weapon
  def initialize (name)
    @name = name
  end

  def selected_weapon weapon=:ROCK
    @weapon = weapon
  end

end
