#stores and chooses the selection of the computer

class Computer

  attr_reader :selection

  def initialize
    @selection = [:rock, :paper, :scissors].sample
  end

  def reselect
    self.selection = [:rock, :paper, :scissors].sample
  end

  private

  attr_writer :selection

end
