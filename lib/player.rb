class Player
  
  attr_reader :choice

  OPTIONS = ['Rock', 'Paper', 'Scissors']

  def initialize
    @choice = ''
  end

  def choose(choice)
    fail 'Please choose Rock, Paper or Scissors' unless valid_choice(choice)
    @choice = choice.capitalize
  end

  def valid_choice(choice)
    OPTIONS.include?(choice.capitalize)
  end

end
