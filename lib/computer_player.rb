  class ComputerPlayer

  attr_reader :weapon, :name

  def initialize(name)
    @weapon = random_weapon
    @name = name
  end

private

  def random_weapon
    [:rock, :paper, :scissors].sample
  end

end
