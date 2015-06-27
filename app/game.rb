class Game 

  CHOICES = ['paper','rock','scissors']

  attr_reader :player, :computer

  def initialize
    @player = :player
    @computer = :computer
  end


  def tie player_pick, comp_pick
    if player_pick == comp_pick
       "It's a tie"
    # elsif player_pick == "paper" && comp_pick== "rock"
    #   puts "You win!! Paper wraps Rock."
    # elsif player_pick == "rock" && comp_pick == "paper"
    #   puts "Computer wins!! Paper wraps Rock"
    # elsif player_pick == "scissors" && comp_pick == "rock"
    #   puts "computer wins!! Rock smashes Scissors"
    # elsif player_pick == "rock" && comp_pick == "scissors"
        
    end
  end

    def comp_win player_pick, comp_pick
      if comp_pick == "rock" && player_pick == "scissors"
        "computer wins!!! Rock smashes scissors"
      elsif comp_pick == "paper" && player_pick == "rock"
        "computer wins!!! paper wraps rock"
      elsif comp_pick == "scissors" && player_pick == "paper"
        "computer_wins!!! scissors cuts paper"
      end
    end

    def player_win player_pick, comp_pick
      if player_pick == "rock" && comp_pick == "scissors"
        "player wins!!! rock smashes scissors"
      elsif player_pick == "paper" && comp_pick == "rock"
        "player wins!!! paper wraps rock"
      elsif player_pick == "scissors" && comp_pick == "paper"
        "player wins!!! scissors cuts paper"
          
      end
    end
        
end