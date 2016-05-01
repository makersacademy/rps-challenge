class Player

  attr_reader :name, :weapon, :score

  def initialize name = "Nameless one"
    @name = name
    @weapon = nil
    @score = 0
  end

  def choose_weapon weapon
    @weapon = weapon.to_sym
  end

  def add_point
    @score += 1
  end

end
