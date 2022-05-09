class Game

  attr_reader :player, :choice, :play, :computer_choice
  def initialize(player, choice)
    @choice = choice
    @player = player
    @computer_choice = ['ROCK', 'PAPER', 'SCISSORS', 'SPOCK', 'LIZARD'].sample
  end

  def choice
    @choice.upcase
  end

  
  def won?
    if self.play == "PLAYER WINS"
     self.player + ' wins.'
    elsif self.play == "CPU WINS"
     'CPU wins.'
    elsif self.play == "DRAW"
     "It's a draw."
    end
  end

  def play
    case
    when (self.choice == 'ROCK' && self.computer_choice == 'SCISSORS') || 
         (self.choice == 'ROCK' && self.computer_choice == 'LIZARD') || 
         (self.choice == 'PAPER' && self.computer_choice == 'SPOCK') || 
         (self.choice == 'PAPER' && self.computer_choice == 'ROCK') ||
         (self.choice == 'SCISSORS' && self.computer_choice == 'PAPER') || 
         (self.choice == 'SCISSORS' && self.computer_choice == 'LIZARD') ||
         (self.choice == 'SPOCK' && self.computer_choice == 'SCISSORS') || 
         (self.choice == 'SPOCK' && self.computer_choice == 'ROCK') ||
         (self.choice == 'LIZARD' && self.computer_choice == 'SPOCK') || 
         (self.choice == 'LIZARD' && self.computer_choice == 'PAPER')
     "PLAYER WINS"
    when (self.computer_choice == 'ROCK' && self.choice == 'SCISSORS') || 
         (self.computer_choice == 'ROCK' && self.choice == 'LIZARD') || 
         (self.computer_choice == 'PAPER' && self.choice == 'SPOCK') || 
         (self.computer_choice == 'PAPER' && self.choice == 'ROCK') ||
         (self.computer_choice == 'SCISSORS' && self.choice == 'PAPER') || 
         (self.computer_choice == 'SCISSORS' && self.choice == 'LIZARD') ||
         (self.computer_choice == 'SPOCK' && self.choice == 'SCISSORS') || 
         (self.computer_choice == 'SPOCK' && self.choice == 'ROCK') ||
         (self.computer_choice == 'LIZARD' && self.choice == 'SPOCK') || 
         (self.computer_choice == 'LIZARD' && self.choice == 'PAPER')
     "CPU WINS"
    when (self.choice == 'ROCK' && self.computer_choice == 'ROCK') ||
         (self.choice == 'PAPER' && self.computer_choice == 'PAPER') ||
         (self.choice == 'SCISSORS' && self.computer_choice == 'SCISSORS') ||
         (self.choice == 'SPOCK' && self.computer_choice == 'SPOCK') ||
         (self.choice == 'LIZARD' && self.computer_choice == 'LIZARD')
     "DRAW"
   end 
  end

end