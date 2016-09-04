class Computer

  CHOICES = ["spock","scissors","paper","rock","lizard"]

  attr_accessor :score, :name, :choice

  def initialize
    @score = 0
    @name = "Watson"
    @choice = self.play
  end

  def play
    CHOICES.sample
  end


end
