class Player

    attr_reader :name
    attr_reader :move
    attr_reader :weapon
  
    def initialize(name)
        @name = name
        @weapon = nil
    end

    def store_move( move = nil)
        @move = move if @name == 'Usna'
    end

    def select_weapon(weapon)
        @weapon = weapon
    end
end