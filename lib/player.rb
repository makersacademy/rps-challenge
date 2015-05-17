class Player

  attr_reader :shape

  def initialize
    @shape = ''
  end



  def choice shape
    if shape == 'rock'
     @shape = 'rock'
    elsif shape == 'scissors'
     @shape = 'scissors'
    elsif shape == 'paper'
     @shape = 'paper'
    else shape !="rock" || shape != "scissors" || shape != "paper"
     return "Please choose between rock, paper or scissors"
    end
  end
end
