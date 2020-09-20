class Game 

  attr_reader :defeats, :player, :opponent

  def initialize(player, opponent)
    @defeats = {'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper'}
    @player = player
    @opponent = opponent
    # @throw = defeats.keys
  end 

  # def throw 
  #   @throw = @defeats.keys
  # end
  
  # def computer_move 
  #   @throw.sample
  # end 

  def winner?
    if @opponent.throw == @player.move 
      "Draw"
    elsif @opponent.throw == @defeats[@player.move]
      "Player wins"
    else 
      "Computer wins"
    end 
    
  end 

end 