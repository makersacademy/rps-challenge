class ComputerWeaponChoice

  def initialize
    @choice = [:rock, :paper, :scissors].sample
  end

  attr_reader :choice

end
