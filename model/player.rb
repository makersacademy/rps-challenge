class Player

    attr_reader :name, :weapon

    def initialize(name, weapon)
      @name = name
      @weapon = weapon
    end

    def select(weapon)
      @weapon = weapon
    end
end
