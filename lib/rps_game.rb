require 'computer'

class RPS_Game
    attr_reader :player_selection, :computer_option

    def initialize(player_selection, computer_option)
      @player_selection = player_selection
      @computer_option = computer_option
    end

    def result(player_selection, computer_option)
      if @player_selection == @computer_option
        "draw"
      elsif @player_selection == "Paper" && @computer_option == "Rock"
        "You win"
      elsif @player_selection == "Scissors" && @computer_option == "Paper"
        "You win"
      elsif @player_selection == "Rock" && @computer_option == "Scissors"
        "You win"
      else
        "Lose"
      end
    end
  end
end