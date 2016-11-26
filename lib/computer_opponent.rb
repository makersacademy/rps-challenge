# randomly generated name and weapon for user to play against

require_relative './weapons.rb'

class ComputerOpponent

  include Weapons

  attr_reader :name, :weapon

  def initialize
    @name = "Computer #{["Bobby", "Sara", "Vincent", "Amir", "Mei-Lin"].sample}"
    @weapon = Weapons.random
  end
end
