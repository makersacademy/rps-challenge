class Ai
  attr_reader :name
  attr_reader :weapon

  def initialize
    @name = [:Jarvis, :TARS, :HAL, :R2D2, :T1000].sample
    @weapons = [:Rock, :Paper, :Scissors]
  end

  def set_weapon
    @weapon = @weapons.sample
  end
end
