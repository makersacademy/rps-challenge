class Computer

  attr_reader :choice

  def makes_choice
    @choice = [:ROCK, :PAPER, :SCISSORS, :LIZARD, :SPOCK].sample
  end

end
