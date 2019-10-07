class Computer
  def initialize
    @computer = nil
  end

  def choice
    @choices = ['Rock', 'Paper', 'Scissors']
    @computer = @choices[Kernel.rand(@choices.length)]
  end
end
