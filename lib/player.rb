class Player
  attr_reader :name, :weapon

  def initialize(name)
    if name != nil
      @name = name
    else
      @name = "Computer"
    end
    @weapon = nil
  end

  def choice(weapon)
    @weapon = weapon
  end
end
