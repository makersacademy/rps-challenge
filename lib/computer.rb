class Computer

  CHOICES = ["spock","scissors","paper","rock","lizard"]


  attr_accessor :score, :name

  def initialize
    @score = 0
    @name = "Watson"
  end

  def play
    CHOICES.sample
  end


end
