class Computer
  attr_reader :options

  def initialize
    @options = ['Rock', 'Paper', 'Scissors']
  end

  def computers_turn
    @options.sample
  end

end