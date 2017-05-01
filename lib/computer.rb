class Computer

  attr_reader :name, :weapon_choice

  def initialize
    @name = "The Great Cthulhu"
    @weapon_rack = ["Rock", "Paper", "Scissors"]
    @weapon_choice = self.choose
  end

  def choose
    @weapon_rack.sample
  end

end
