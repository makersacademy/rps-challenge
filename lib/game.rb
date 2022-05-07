class Game

  attr_reader :player, :choice, :play, :computer_choice
  def initialize(player, choice)
    @choice = choice
    @player = player
    @computer_choice = ['rock', 'paper', 'scissors'].sample.upcase
  end

  def choice
    @choice.upcase
  end

  
  def won?
    if self.play == "PLAYER WINS"
      return self.player + ' wins.'
    elsif self.play == "CPU WINS"
      return 'CPU wins.'
    elsif self.play == "DRAW"
      return "It's a draw."
    end
  end

  def play
    case
    when (self.choice == 'ROCK' && self.computer_choice == 'SCISSORS') || 
         (self.choice == 'SCISSORS' && self.computer_choice == 'PAPER') || 
         (self.choice == 'PAPER' && self.computer_choice == 'ROCK')
     "PLAYER WINS"
    when (self.choice == 'SCISSORS' && self.computer_choice == 'ROCK') ||
         (self.choice == 'PAPER' && self.computer_choice == 'SCISSORS') ||
         (self.choice == 'ROCK' && self.computer_choice == 'PAPER')
     "CPU WINS"
    when (self.choice == 'SCISSORS' && self.computer_choice == 'SCISSORS') ||
         (self.choice == 'ROCK' && self.computer_choice == 'ROCK') ||
         (self.choice == 'PAPER' && self.computer_choice == 'PAPER')
     "DRAW"
   end 
  end

end