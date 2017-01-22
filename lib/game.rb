class Game

  attr_reader :userchoice, :computerchoice, :result
  
  def initialize(userchoice, computerchoice)
    @userchoice = userchoice
    @computerchoice = computerchoice
  end

  def result
    if userchoice == 'rock' && computerchoice == 'scissors'
      :win
    elsif userchoice == 'rock' && computerchoice == 'paper'
      :lose
    elsif userchoice == 'paper' && computerchoice == 'rock'
      :win
    elsif userchoice == 'paper' && computerchoice == 'scissors'
      :lose
    elsif userchoice == 'scissors' && computerchoice == 'paper'
      :win
    elsif userchoice == 'scissors' && computerchoice == 'rock'
      :lose
    else
      :draw
    end
  end

end
