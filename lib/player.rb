class Player
  attr_reader :name, :weapon
  WEAPON = [:rock, :scissors, :paper]

  def initialize(name)
    @name = name
  end

end
