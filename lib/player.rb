class Player
  
  attr_reader :choice

  OPTIONS = ['Rock', 'Paper', 'Scissors']

  def initialize
    @choice = nil
  end

  def choose(choice)
    fail 'Please choose Rock, Paper or Scissors' unless valid_choice(choice)
    @choice = choice.downcase.to_sym
  end

private

  def valid_choice(choice)
    OPTIONS.include?(choice.capitalize)
  end

end
