class RockPaperScissors
    attr_reader :choice, :name

    def initialize(name)
        @choice = ["rock", "paper", "scissors"].sample
        @name = name
    end


    def play(player_choice, computer_choice = @choice)
    if player_choice == computer_choice
        "It's a draw"
      elsif player_choice == "rock" && computer_choice == "scissors" || 
        player_choice == "paper" && computer_choice == "rock" || 
        player_choice == "scissors" && computer_choice == "paper"
         "#{@name} wins"
      else
         "Computer wins"
      end
    end


end