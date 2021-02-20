class RockPaperScissors
    attr_reader :choice, :name

    def initialize(name)
        @choice = ["rock", "paper", "scissors"].sample
        @name = name
    end


    def play(player_choice)
    if player_choice == "rock" && @choice == "rock"
        "It's a draw"
      elsif player_choice == "paper" && @choice == "paper"
         "It's a draw"
      elsif player_choice == "scissors" && @choice == "scissors"
        "It's a draw"
      elsif player_choice == "rock" && @choice == "scissors"
         "#{@name} wins"
      elsif player_choice == "paper" && @choice == "rock"
         "#{@name} wins"
      elsif player_choice == "scissors" && @choice == "paper"
         "#{@name} wins"
      else
         "Computer wins"
      end
    end


end