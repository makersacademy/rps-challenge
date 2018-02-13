class ComputerPlayer

  attr_reader :weapon

  def initialize
    @weapon = random_weapon
  end

private

  def random_weapon
    [:rock, :paper, :scissors].sample
  end

end
