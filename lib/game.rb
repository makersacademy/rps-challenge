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
end