class Game
  attr_reader :player_move, :computer_move, :winner

  def initialize(player_move = Player.choose(choice))
    @player_move = player_move
  end
  
  def computer_move
    list = ["rock", "paper", "scissors"]
    @computer_move = list.sample
  end
  
  def play
    @winner = "It's a draw"
    if @player_move == "rock"
      if @computer_move == "scissors"
        @winner = "Player wins"
      end
      if @computer_move == "paper"
        @winner = "Computer wins"
      end
    end
    if @player_move == "scissors"
      if @computer_move == "rock"
        @winner = "Computer wins"
      end
      if @computer_move == "paper"
        @winner = "Player wins"
      end
    end
    if @player_move == "paper"
      if @computer_move == "scissors"
        @winner = "Computer wins"
      end
      if @computer_move == "rock"
        @winner = "Player wins"
      end 
    end
    return @winner
  end
end