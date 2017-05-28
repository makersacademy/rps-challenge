class Game
  attr_reader :player1, :player2

  def initialize(player1, player2 = Computer.new)
    @player1 = player1
    @player2 = player2
  end

  def winner
    return "Tie!" if @player1.hand == @player2.hand  
    if @player1.wins_from.include? @player2.hand 
       @player1.wins
       "#{@player1.hand} wins!" 
    else
       @player2.wins
       "#{@player2.hand} wins!" 
    end 
  end 

  private

  def add_points(hand)
    @player1.hand == hand ? @player1.wins : @player2.wins
  end

  def declare_winner(hand)
    add_points(hand)      
    return "#{hand} wins!"
  end
end
