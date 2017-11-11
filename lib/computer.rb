class Computer
  attr_reader :name

  def initialize
    @name = "Computer"
  end

  def choice
    ['rock', 'paper', 'scissors'].sample
  end

end
