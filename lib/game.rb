class Game

  def initialize(choices = ['rock', 'paper', 'scissors'])
    @choices = choices
  end

  def make_choice
    @choices.sample
  end
end