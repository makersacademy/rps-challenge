class Game

    attr_reader :player, :options, :player_pick, :current_turn

    def initialize(player)
        @player = player
        @options = ['Rock', 'Paper', 'Scissors']
        @current_turn = true
    end

    def player_chooses(choice)
        @current_turn = false
        @player_pick = choice
    end
  
end