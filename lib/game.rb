#decides the result of the game

class Game
attr_reader  :computer_defense


RULES = {rock: :scissors,
          paper: :rock,
          scissors: :paper}

    def initialize( computer_defense)

      @computer_defense = computer_defense

    end

    def self.create( computer_defense)
      @game = Game.new( computer_defense)
    end

    def self.instance
      @game
    end

    def tie?(player_input)
      player_input == @computer_defense
    end

    def result(player_input)
      return :draw if tie?(player_input)
      RULES[player_input]==@computer_defense ? :win : :loose
    end


end
