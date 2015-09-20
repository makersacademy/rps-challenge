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

  def winner(player1, player2)
    return "No winner!" if (player1.choice == player2.choice)
    (@result[player1.choice.to_sym] == player2.choice) ? player1.name : player2.name
  end



end