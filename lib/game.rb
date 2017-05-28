class Game
  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def winner
    if @player.hand == 'Rock' && @computer.hand == 'Scissors'
	player.wins
        return @player
    elsif @player.hand == 'Scissors' && @computer.hand == 'Rock'
  	computer.wins	
	return @computer
    end 
  end  
end
