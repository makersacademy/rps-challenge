class Ai
  attr_reader :name
  attr_accessor :weapon

  def initialize
    @name = [:Jarvis, :TARS, :HAL, :R2D2, :T1000].sample
    @weapons = ["Rock", "Paper", "Scissors"]
  end

  def choose_weapon
    @weapon = @weapons.sample
  end
end
