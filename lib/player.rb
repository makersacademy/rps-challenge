
class Player

    def initialize(player)
        @player = player
    end

    def player
        @player
    end

    def self.create(player)
        @player = Player.new(player)
    end
  
    def self.instance
      @player
    end
end