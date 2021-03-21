class Game
attr_reader :name, :player_weapon, :opponent_weapon

    def initialize(name, player_weapon, opponent_weapon)
        @name = name
        @player_weapon = player_weapon
        @opponent_weapon = opponent_weapon
    end

    def outcome
        :win
    end
end