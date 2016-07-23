require_relative "player"

class Game

  attr_reader :player, :weapons, :cpu_weapon

    def initialize(player = Player.new)
      @player = player
      @weapons = ["rock", "paper", "scissors"]
    end

    def winner
      fight
    end

    private

    def random_weapon
      @weapons.sample
    end

    def fight
      @cpu_weapon = random_weapon
      if @player.weapon == @cpu_weapon
        "Draw!"
      else
        return @cpu_weapon
      end
    end

end
