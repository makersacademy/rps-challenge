#decides the result of the game

class Game
attr_reader :player_name, :computer_defense

    def initialize(player_name, computer_defense)
      @player_name = player_name
      @computer_defense = computer_defense
    end

    def self.create(player_name, computer_defense)
      @game = Game.new(player_name, computer_defense)
    end

    def self.instance
      @game
    end

    def tie?(player_input)
      player_input == computer_defense.counter_attack
    end



end
