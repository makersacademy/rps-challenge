class Game
    attr_reader :player_choice, :cpu_choice
    def initialize(choice)
        @player_choice = choice
        @cpu_choice = ['Rock', 'Paper', 'Scissors'].sample
    end

    def cpu_choice
        @cpu_choice
    end

    def result
        case
        when @player_choice == 'Rock' && @cpu_choice == 'Scissors'
            return "You win!"
        when @player_choice == 'Rock' && @cpu_choice == 'Paper'
            return "You lose!"
        when @player_choice == 'Paper' && @cpu_choice == 'Rock'
            return "You win!"
        when @player_choice == 'Paper' && @cpu_choice == 'Scissors'
            return "You lose!"
        when @player_choice == 'Scissors' && @cpu_choice == 'Paper'
            return "You win!"
        when @player_choice == 'Scissors' && @cpu_choice == 'Rock'
            return "You lose!"
        else
            return "It's a draw!"
        end
    end
end