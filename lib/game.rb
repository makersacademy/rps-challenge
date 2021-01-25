class Game
    attr_reader :player1, :player2, :player1_choice, :player2_choice, :result

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
    end

    def play(player1_choice, player2_choice="")
        @player1_choice = player1_choice
        @player2_choice = player2_choice.empty? ? random_choice : player2_choice
        @result = determine_result
    end

    private

    def random_choice
        ["Rock", "Paper", "Scissors"].sample
    end

    def determine_result
        options = { "Rock": "Scissors", "Paper": "Rock", "Scissors": "Paper" }
        if player1_choice == player2_choice
            @result = "It's a draw"
        elsif options[:player1_choice] == player2_choice
            @result = player1.name + " wins!"
        else
            @result = player2.name + " wins :-("
        end
    end
end