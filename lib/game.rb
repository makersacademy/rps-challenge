class Game
    attr_reader :player_choice
    def initialize(player_name)
        @name = player_name
        @choices = ["Rock", "Paper", "Scissors"]
    end

    def pick_choice
        @choices.sample
    end

    def who_wins(player_choice, game_choice)
        if game_choice == player_choice
            "It's a draw."
        elsif (game_choice == "Rock") && (player_choice == "Scissors")
            "#{@name} you lost!"
        elsif (game_choice == "Paper") && (player_choice == "Rock")
            "#{@name} you lost!"
        elsif (game_choice == "Scissors") && (player_choice == "Paper")
            "#{@name} you lost!"
        else
            "Congrats #{@name}, you win!"
        end
    end

end