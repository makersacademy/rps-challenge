class Computer
  attr_reader :name, :choice

  def initialize
    @name = "Computer"
  end

  def select
    @choice = ['ROCK', 'PAPER', 'SCISSORS'].sample
  end

end
