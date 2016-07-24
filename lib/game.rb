require_relative "player"

class Game

  attr_reader :player, :weapons, :cpu_weapon

    def initialize(player = Player.new)
      @player = player
      @weapons = ["rock", "paper", "scissors", "spock", "lizard"]
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
                  ["scissors", "lizard"],
                  ["paper", "rock"],
                  ["paper", "spock"],
                  ["rock", "scissors"],
                  ["rock", "lizard"],
                  ["spock", "scissors"],
                  ["spock", "rock"],
                  ["lizard", "spock"],
                  ["lizard", "paper"]]
      if @player.weapon == @cpu_weapon
        "It's a draw!"
      elsif win_pairs.include?(game_pair)
        "#{@player.name} wins!"
      else
        "#{@player.name} lost!"
      end
    end

end
