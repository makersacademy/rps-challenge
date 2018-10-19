class Computer

  def initialize
    @computer = nil
  end

  def choice
    @choices = ['Rock', 'Paper', 'Scissors']
    @computer = @choices[rand(@choices.length)]
  end
end
