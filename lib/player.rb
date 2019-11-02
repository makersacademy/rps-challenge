class Player
  attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

  def weapons(weapon)
    ["rock", "paper", "scissors"].select { |w| @choice = weapon if weapon == w }.join("")
  end


end
