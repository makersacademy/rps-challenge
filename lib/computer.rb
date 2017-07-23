class Computer

    attr_reader :weapon

    def select_attack
      @weapon = Game::WEAPONS.sample
    end
    
end
