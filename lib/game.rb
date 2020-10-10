class Game
attr_reader:player,:opponent,:result
  def initialize(player=Player.new,opponent=Opponent.new)
    @player=player
    @opponent=opponent


  end

  GAME_TABLE = {
     rock: {rock: :draw, paper: :lose, scissors: :win},
     paper: {paper: :draw, scissors: :lose, rock: :win},
     scissors: {paper: :win, scissors: :draw, rock: :lose }
     }

      def chooses
        @opponent.shape
      end
      def win?
        result == :win
      end

      def lose?
        result == :lose
      end

      def draw?
        result==:draw
      end


     def result
       GAME_TABLE[@player.player_option.downcase.to_sym][@opponent]
     end

end
