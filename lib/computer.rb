class Computer

  attr_reader :choice

  def makes_choice
    @choice = [:ROCK, :PAPER, :SCISSORS].sample
  end

end
