class Game

attr_reader :player, :opponent, :winner

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
    @winner = nil
  end
 
  
end