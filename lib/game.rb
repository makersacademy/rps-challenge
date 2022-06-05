class Game
  WEAPONS = [:rock, :paper, :scissors]
  RULES = {rock: :scissors, scissors: :paper, paper: :rock}

  attr_reader :players

    def initialize(player_1, player_2)
      @players = [player_1, player_2]
      same_name_setter if player_1.name == player_2.name
    end
  
    def player_1
      @players.first
    end
  
    def player_2
      @players.last
    end

    def select_type
      if single_player
        :game
      else
        :game_multi
      end
    end

    def result
      if player_2.weapon == RULES[player_1.weapon]
        :win
      elsif player_1.weapon == RULES[player_2.weapon]
        :lose
     else
        :draw
      end
    end

    def single_player
      player_2.name == :Computer
    end

    def same_name_setter
      player_2.name=("#{player_2.name} 2")
    end
  end