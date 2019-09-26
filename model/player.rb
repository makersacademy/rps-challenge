class Player

    attr_reader :name, :attack

    def initialize(name, attack = nil)
      @name = name
      @attack = attack
    end

    def select(attack)
      @attack = attack
    end
end
