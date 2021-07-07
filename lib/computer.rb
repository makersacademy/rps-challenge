
class Computer
attr_reader :score, :choice
  CHOICES = ['ROCK', 'PAPER', 'SCISSORS']

  def initialize
    @score = 0
    @choice 
  end

  def make_choice
    CHOICES.sample
  end 

  def choice_log(choice)
    @choice = choice
  end

  def score_increase
    @score += 1
  end
end