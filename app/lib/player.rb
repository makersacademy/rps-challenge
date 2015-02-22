class Player

  attr_reader :name, :weapon, :browser_id

  def initialize(name = 'Unknown Player', browser_id = 'No  ID')
    @name = name
    @browser_id = browser_id
    @weapon = :no_weapon

  end

  def set_name(name)
    @name = name
  end

  def set_browser_id(id)
    @browser_id = id
  end

  def choose(weapon)
    @weapon = weapon
  end



end
