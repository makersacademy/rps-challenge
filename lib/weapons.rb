class Weapons
  attr_reader :name, :predators
  def initialize(name, predators)
    @name = name
    @predators = predators
  end
end