class Game

  attr_reader :options

  def initialize
    @options = ['rock', 'paper', 'scissors']
    @result = {rock: 'scissors', scissors: 'paper', paper: 'rock'}
  end

  def winner(option1, option2)
    return 'no winner' if (option1 == option2)
    (@result[option1.to_sym] == option2) ? option1 : option2
  end


end