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
                
    def result(choice_1, choice_2)
        draw?(choice_1, choice_2) ? :draw : win_or_lose(choice_1, choice_2)
    end

    private

    def draw?(choice_1, choice_2)
        choice_1 == choice_2
    end
    
    def win_or_lose(choice_1, choice_2)
        RULES[choice_1] == choice_2 ? :win : :lose
    end
end