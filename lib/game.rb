class Game

  def initialize
    
  end
  
  def play
    %w(Rock Paper Scissors).sample
  end

  def winner player, computer, name
    case player
    when 'Scissors'
      @output = (computer == 'Rock' ? 'Computer wins' : (name + ' wins!'))
    when 'Rock'
      @output = (computer == 'Paper' ? 'Computer wins' : (name + ' wins!'))
    else
      @output = (computer == 'Scissors' ? 'Computer wins' : (name + ' wins!'))
    end
  end
end