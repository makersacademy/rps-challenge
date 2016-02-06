
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

  attr_reader :name, :weapon, :turn_klass


    def initialize(name, turn_klass=Turn)
      @name = name
      @turn_klass = turn_klass
    end


    def new_turn(weapon_choice)
      @weapon = weapon_choice
      turn_klass.new(weapon_choice)
    end

end
