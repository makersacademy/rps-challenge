class Game
    attr_reader :player, :computer, :winner

    def initialize(player, computer)
        @player = player
        @computer = computer
        @winner = nil
    end

    def who_wins
        if @player.choice == @computer.choice
            @winner = "It's a draw"
        elsif @player.choice == "Rock" && @computer.choice == "Paper"
            @winner = "The Computer wins!"
        elsif @player.choice == "Rock" && @computer.choice == "Scissors"
            @winner = "You win!"
        elsif @player.choice == "Paper" && @computer.choice == "Scissors"
            @winner = "The Computer wins!"
        elsif @player.choice == "Paper" && @computer.choice == "Rock"
            @winner = "You win!"
        elsif @player.choice == "Scissors" && @computer.choice == "Rock"
            @winner = "The Computer wins!"
        elsif @player.choice == "Scissors" && @computer.choice == "Paper"
            @winner = "You win!"
        end
    end

end