class Player

    attr_reader :name, :weapon

    def initialize(name, weapon = nil)
      @name = name
      @weapon = weapon
    end

    def select(attack)
      @weapon = attack
    end
end
