class Game
  attr_reader :player_one, :player_two,:winner  
  attr_writer :winner

  def initialize player_one, player_two
    @player_one = { player: player_one }
    @player_two = { player: player_two }
    @winner = nil 
  end 

  def choose_tool player, tool
    fail "Game Over" unless winner == nil
    fail "Choose only either :Rock, :Scissors, :Paper, :Lizard, :Spoke" unless [:Rock, :Scissors, :Paper, :Lizard, :Spoke].any? { |i| i == tool }
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
      
    if player_one[:tool] == :Rock && (player_two[:tool] == :Scissors || player_two[:tool] == :Lizard)
      @winner = player_one[:player]
    elsif player_one[:tool] == :Scissors && (player_two[:tool] == :Paper || player_two[:tool] == :Lizard)
      @winner = player_one[:player]
    elsif  player_one[:tool] == :Paper && (player_two[:tool] == :Rock || player_two[:tool] == :Spoke)
      @winner = player_one[:player] 
     elsif player_one[:tool] == :Spoke && (player_two[:tool] == :Scissors  || player_two[:tool] == :Rock)
      @winner = player_one[:player]
    elsif  player_one[:tool] == :Lizard && (player_two[:tool] == :Paper || player_two[:tool] == :Spoke)

      @winner = player_one[:player]     
    else
      @winner = player_two[:player] 
    end  

    return "#{@winner} is the winner. Game Over!"  
  end

end  