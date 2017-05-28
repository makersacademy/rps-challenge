class Game
  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def winner
    return "Tie!" if @player.hand == @computer.hand  
    if @player.wins_from.include? @computer.hand 
       @player.wins
       "#{@player.hand} wins!" 
    else
       @computer.wins
       "#{@computer.hand} wins!" 
    end 
  end 

  private

  def add_points(hand)
    @player.hand == hand ? @player.wins : @computer.wins
  end

  def declare_winner(hand)
    add_points(hand)      
    return "#{hand} wins!"
  end
end
