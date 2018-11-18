class Enemy

  attr_reader :choice
  CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def initialize(choice = '')
    @choice = choice
  end

  def choose_weapon
    @choice = CHOICES.sample
  end

end
