class Game
  attr_reader :player1, :player2, :current_player, :opponent, :multiplayer, :winner

  def initialize(player1, player2 = Computer.new)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @opponent = player2
    @multiplayer = false
  end

  def find_winner
    if @current_player.hand && @opponent.hand
      if @current_player.hand == @opponent.hand 
	empty_hands 
        @winner = "Tie!"       
      elsif @current_player.wins_from.include? @opponent.hand 
         @current_player.wins
         empty_hands
         @winner = "#{@current_player.name} wins!" 
      else
         @opponent.wins
         empty_hands
        @winner = "#{@opponent.name} wins!" 
      end 
    end
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

  private
  def empty_hands
     @current_player.empty_hand
     @opponent.empty_hand
  end
end
