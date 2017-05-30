class Game
  attr_reader :player1, :player2, :current_player, :opponent, :multiplayer, :win

  def initialize(player1, player2 = Computer.new, win = Win.new)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @opponent = player2
    @multiplayer = false
    @win = win
  end

  def find_winner
    @win.find_winner(@current_player,@opponent)	  
    empty_hands
  end 

  def switch_player
    @current_player, @opponent = @opponent, @current_player
  end

  def set_multiplayer
    @multiplayer = true
  end
  
  def final_hand?
    @opponent.hand 
  end
  
  def computer_mode
    final_hand? && !@multiplayer
  end

  def ultimate_winner
    return 'You both' if @player1.points == @player2.points
    @player1.points > @player2.points ? @player1.name : @player2.name
  end

  private
  def empty_hands
   (@current_player.empty_hand; @opponent.empty_hand) if @multiplayer
  end
end
