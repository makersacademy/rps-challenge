class Game
    attr_reader :player1, :player2, :player1_choice, :player2_choice, :result

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
    end

    def play(p1_choice, p2_choice="")
        @player1_choice = p1_choice
        @player2_choice = p2_choice.empty? ? random_choice : p2_choice
        @result = determine_result
    end

    private

    def random_choice
        ["Rock", "Paper", "Scissors"].sample
    end

    def determine_result
        options = { "Rock": "Scissors", "Paper": "Rock", "Scissors": "Paper" }
        puts 'Player 1 choice: ' + player1_choice
        puts 'Player 2 choice: ' + player2_choice
        if player1_choice == player2_choice
            @result = "It's a draw"
        elsif options[player1_choice.to_sym] == player2_choice
            @result = player1.name + " wins!"
        else
            @result = player2.name + " wins :-("
        end
    end
end