class Game
  attr_accessor :player_one, :player_two, :winner  
  

  def initialize 
    @player_one = { }
    @player_two = { }
    @winner = nil 
  end 

  def add_player_one player
    player_one[:player] = player
  end  

  def add_player_two player
    player_two[:player] = player 
  end

  def choose_tool player, tool
    fail "Game Over" unless winner == nil
    # fail "Choose only either :Rock, :Scissors, or :Paper" unless [:Rock, :Scissors, :Paper].any? { |i| i == tool }
    player[:tool] = tool
  end 

  def play
    declare_winner
  end  

  def has_player_one?
    player_one
  end 

  def has_player_two?
    player_two
  end  

  def ready?
    player_one_has_tool? && player_two_has_tool?
  end

  private

  def player_one_has_tool?
    player_one[:tool] != nil
  end  

  def player_two_has_tool?
    player_two[:tool] != nil
  end  

  def declare_winner

    fail "Game Over" unless winner == nil
    fail "Choose tool" unless ready?

    if player_one[:tool] == player_two[:tool] 
       player_one[:tool] = nil 
       player_two[:tool] = nil 
       return "Draw. Please choose tools again" 
    end   
      
    if player_one[:tool] == :Rock && player_two[:tool] == :Scissors 
      @winner = player_one[:player]
    elsif player_one[:tool] == :Scissors && player_two[:tool] == :Paper 
      @winner = player_one[:player]
    elsif  player_one[:tool] == :Paper && player_two[:tool] == :SRock 
      @winner = player_one[:player]  
    else
      @winner = player_two[:player] 
    end  

    return "#{@winner} is the winner. Game Over!"  
  end

end  