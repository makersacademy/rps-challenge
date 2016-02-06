class Player

  class << self

    def players
      @players ||= {}
    end

    def add(player_id, name)
      players[player_id] = name
    end

    def look_up(player_id)
      players[player_id]
    end

  end

  attr_reader :name


    def initialize(name)
      @name = name
    end


end
