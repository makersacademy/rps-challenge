class Computer
  attr_reader :name, :weapon

  def initialize
    @name = "Enigma"
  end

  def weapon_choice
    @weapon = [:rock, :paper, :scissors].sample
  end

end
