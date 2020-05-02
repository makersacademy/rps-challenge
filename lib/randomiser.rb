class Randomiser
  attr_reader :sample

  def initialize
    @sample = ["ROCK", "PAPER", "SCISSORS"].sample
  end

  # def result  - not sure if needed because of attr_reader
  #   @sample
  # end
end
