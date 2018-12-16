#require 'player'
#require 'computer'

class Game

    attr_reader :player, :computer

    WEAPONS = [:Rock, :Paper, :Scissors]

    RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

    def initialize(player = Player.new, computer = Computer.new)
        @player = player
        @computer = computer
    end    

    def player_choice
        @player.move(player_move)
    end

    def computer_choice
        @computer.weapon
    end

    def result
        if player_choice == :Rock && computer_choice == :Scissors
            "You Win"
        elsif player_choice == :Paper && computer_choice == :Scissors
            "You Lose"
        elsif player_choice == :Scissors && computer_choice == :Paper
            "You Win"
        elsif player_choice == :Rock && computer_choice == :Paper
            "You Lose"
        elsif player_choice == :Paper && computer_choice == :Rock
            "You Win"
        elsif player_choice == :Scissors && computer_choice == :Rock
            "You Lose"
        else
            "It's a Draw"
        end
    end

end