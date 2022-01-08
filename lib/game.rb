class Game

  def initialize
    @options = ['Rock', 'Paper', 'Scissor']
  end 

  def computer_move
    @options.sample
  end 
end 
