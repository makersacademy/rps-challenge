class Game

  attr_reader :userchoice, :computerchoice
  def initialize(userchoice, computerchoice)
    @userchoice = userchoice
    @computerchoice = computerchoice
  end

  def winner
    if userchoice == 'rock' && computerchoice == 'scissors'
      "You win!"
    elsif userchoice == 'rock' && computerchoice == 'paper'
      "Computer wins!"
    elsif userchoice == 'paper' && computerchoice == 'rock'
      "You win!"
    elsif userchoice == 'paper' && computerchoice == 'scissors'
      "Computer wins!"
    elsif userchoice == 'scissors' && computerchoice == 'paper'
      "You win!"
    elsif userchoice == 'scissors' && computerchoice == 'rock'
      "Computer wins!"
    else
      "It's a draw!"
    end
  end

end
