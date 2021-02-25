class Game 

    
    attr_reader :ai_move, :player_move
    
    def initialize(options)
      @ai_move = Computer.new.ai_move.capitalize
      @player_move = options["player_move"].to_sym
    end

    def winner_is
      if rule_engine[@ai_move].include? @player_move
        'Computer wins'
      elsif rule_engine[@player_move].include? @ai_move
        'You win!'
      else
        'Tie'
      end
    end
    

     

def rule_engine
  {
    'rock': ['scissors'],
    'paper': ['rock'],
    'scissors': ['paper']
  }
end
end