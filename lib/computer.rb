require_relative 'choice'

class Computer
  attr_reader :name, :choice
  SELECTION = [:Rock, :Paper, :Scissors]

  def initialize(chooser = Choice)
    @chooser = chooser
    @choice = nil
  end

  def choose
    @choice = @chooser.new(SELECTION.sample)
  end

end
