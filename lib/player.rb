class Player

  attr_reader :name, :weapon

  def initialize name = "Nameless one"
    @name = name
    @weapon = nil
  end

  def add_weapon weapon
    @weapon = weapon.to_sym
  end

end
