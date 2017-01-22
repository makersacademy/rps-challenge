class Computer

  attr_reader :name, :choice

  def initialize
    choices = ['rock', 'paper', 'scissors']
    @name = "HAL 9000"
    @choice = choices.sample
  end
end
