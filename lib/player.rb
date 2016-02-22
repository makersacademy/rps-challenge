class Player

  attr_reader :weapons, :name

  WEAPONS = [:rock, :paper, :scissors]

    def initialize(player_1_name)
      @name = player_1_name
      @weapons = WEAPONS
    end

end
