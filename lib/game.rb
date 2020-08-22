
class Game 

    def initialize(player_pick, computers_pick) 
        @player_pick = player_pick
        @computers_pick = computers_pick
    end

    def select_winner
      if @player_pick == @computers_pick
        return 'Draw'
      elsif @player_pick == 'Rock' && @computers_pick == 'Scissors' || @player_pick == 'Paper' && @computers_pick == 'Rock' || @player_pick == 'Scissors' && @computers_pick == 'Paper'
        return 'Wins!'
      else
        return 'Lose!'
      end
    end

   attr_reader :computers_pick
end