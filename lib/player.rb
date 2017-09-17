class Player
  attr_reader :weapon, :name

  def initialize(name)
    @name = name
  end

  def weapon_selector(selected)
    @weapon = selected
  end
end
