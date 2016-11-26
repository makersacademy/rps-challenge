class Game
attr_reader :player

    def initialize(player)
      @player = player
    end

    def self.create(player_name)
      @game = Game.new(player_name)
    end

    def self.instance
      @game
    end


end
