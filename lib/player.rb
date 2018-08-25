require "./lib/random_picker.rb"

class Player 
  include RandomPicker

  attr_reader :name, :weapon

  def initialize(name = "The Computer")
    @name = name
  end

  def choose(weapon = random_choice)
    @weapon = weapon
  end

end
