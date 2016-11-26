require 'weapons'

class ComputerOpponent

  attr_reader :name, :weapon

  def initialize
    @name = "Computer #{["Bobby", "Sara", "Vincent", "Amir", "Mei-Lin"].sample}"
    @weapon = Weapons.random
  end
end
