require_relative "player"

class Game

  attr_reader :player, :weapons, :cpu_weapon

    def initialize(player = Player.new)
      @player = player
      @weapons = ["rock", "paper", "scissors"]
    end

    def self.create(player)
      @game = Game.new(player)
    end

    def self.instance
      @game
    end

    def start
      @cpu_weapon = random_weapon
      fight
    end

    def random_weapon
      @weapons.sample
    end

    private

    def fight

      game_pair = [@player.weapon, @cpu_weapon]
      win_pairs = [["scissors", "paper"],
                  ["paper", "rock"],
                  ["rock", "scissors"]]

      if @player.weapon == @cpu_weapon
        "It's a draw!"
      elsif win_pairs.include?(game_pair)
        "#{@player.name} wins!"
      else
        "#{@player.name} lost!"
      end
    end

end
