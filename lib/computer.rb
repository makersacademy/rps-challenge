class Computer

  CHOICES = ["spock","scissors","paper","rock","lizard"]


  attr_accessor :score

  def initialize
    @score = 0
  end

  def play
    CHOICES.sample
  end


end
