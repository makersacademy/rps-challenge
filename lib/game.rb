require_relative 'computer'

class Game
    
    def self.add_player(id, player)
        players[id] = player
    end
    
    def self.players
        @players ||= {}
    end
    
    def self.find_player(id)
        players[id]
    end
    
    CHOICES = [:rock, :paper, :scissors]
    RULES = {   rock: :scissors,
                paper: :rock,
                scissors: :paper }
    RESULT = [ :win, :draw, :lose ]
                
    def result(player_1, player_2 = Computer.new)
        if player_1.choice == player_2.choice
            :draw
        elsif RULES[player_1.choice] == player_2.choice
            :win
        else
            :lose
        end
    end
end