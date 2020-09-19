class Game 

  attr_reader :defeats, :throw

  def initialize(player)
    @defeats = {'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper'}
    @player = player
    @throw = defeats.keys
  end 

  # def throw 
  #   @throw = @defeats.keys
  # end
  
  def computer_move 
    @throw.sample
  end 

  def winner?
    if self.computer_move == @player.move 
      "Draw"
    elsif self.computer_move == @defeats[@player.move]
      "Player wins"
    else 
      "Computer wins"
    end 
    
  end 

end 