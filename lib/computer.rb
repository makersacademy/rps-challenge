#stores and chooses the selection of the computer

class Computer

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :selection

  def initialize
    @selection = WEAPONS.sample
  end

  def reselect
    self.selection = WEAPONS.sample
  end

  private

  attr_writer :selection

end
