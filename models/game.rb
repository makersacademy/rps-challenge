class Game 

    GAME_RULES = {
        rock: {rock: :draw, paper: :lose, scissors: :win},
        paper: {rock: :win, paper: :draw, scissors: :lose},
        scissors: {rock: :lose, paper: :win, scissors: :draw}
      }
    
    attr_reader :ai_move
    
    def initialize(ai_move)
      @ai_move = Computer.new.ai_move
    end

    def win?
        result == :win
      end
    
      def lose?
        result == :lose
      end
    
      def draw?
        result == :draw
      end
    

      private
    
      def result
        GAME_RULES[@player_move][@ai_move]
      end
  
end