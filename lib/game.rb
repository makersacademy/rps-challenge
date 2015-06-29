class Game

  def initialize
    
  end
  
  def play
    %w(Rock Paper Scissors).sample
  end

  def winner player, computer, name
    case player
    when 'Scissors'
      computer == 'Rock' ? @output = 'Computer wins' : @output = "You win!"
    when 'Rock'
      computer == 'Paper' ? @output = 'Computer wins' : @output = "You win!"
    else
      computer == 'Scissors' ? @output = 'Computer wins' : @output = "You win!"
    end
  end
end