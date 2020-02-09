class Game
    attr_reader :weapon, :computer_choice
    def computer_choice
        @computer_choice = ["Rock", "Paper", "Scissors"].sample
    end

    def player_choice(weapon)
        @weapon = weapon
    end

    def result
        case @weapon
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
        end
    end
end