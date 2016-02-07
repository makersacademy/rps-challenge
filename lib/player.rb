
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

  attr_reader :name, :weapon, :turn


    def initialize(name, turn_klass=Turn)
      @name = name
      @turn = turn_klass
    end


    def new_turn(weapon_choice)
      @weapon = weapon_choice
      turn.new(weapon_choice)
    end

end
