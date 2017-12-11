class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
  end

  def select_wep(wep)
    @choice = wep
  end
end