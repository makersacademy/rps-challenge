class Game
  attr_reader :player, :computer

  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def winner
    if @computer.hand == @player.hand
      return 'Tie!'
    elsif total_points < 4
      declare_winner 'Paper'
    elsif total_points < 6
      declare_winner 'Rock'
    elsif total_points == 6
      declare_winner 'Scissors'
     end
  end 

  private
  def total_points
    @computer.value_hand + @player.value_hand
  end

  def add_points(hand)
    @player.hand == hand ? @player.wins : @computer.wins
  end

  def declare_winner(hand)
    add_points(hand)      
    return "#{hand} wins!"
  end
end
