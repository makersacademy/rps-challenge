class Computer
  CHOICES = [:rock, :paper, :scissors]

  attr_reader :name, :move

  def initialize(name = 'Computer')
    @name = name
  end

  def choose
    self.move = CHOICES.sample
  end

  private

  attr_writer :move
end
