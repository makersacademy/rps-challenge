class Game
    attr_reader :choice, :computer_choice, :c_choice

    options = ["Rock", "Paper", "Scissors", "Spock", "Lizard"]

    def computer_choice
        @computer_choice = options.sample
      
    end

    def player_choice(choice)
        @player_choice = choice
    end

    def result
        case @player_choice
        when "Rock"
            @computer_choice == "Paper" ? "Computer wins!" :
            @computer_choice == "Scissors" ? "You win!" :
            "It's a tie!"
        when "Paper"
            @computer_choice == "Rock" ? "You win!" :
            @computer_choice == "Scissors" ? "Computer wins!" :
            "It's a tie!"
        when "Scissors"
            @computer_choice == "Rock" ? "Computer wins!" :
            @computer_choice == "Paper" ? "You win!" :
            "It's a tie!"
        when "Spock"
            @computer_choice == "Rock" ? "Computer wins!" :
            @computer_choice == "Paper" ? "You win!" :
            "It's a tie!"
        when "Lizard"
            @computer_choice == "Rock" ? "Computer wins!" :
            @computer_choice == "Paper" ? "You win!" :
            "It's a tie!"
        end
    end
end
