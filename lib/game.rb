class Game
  WEAPONS = [:rock, :paper, :scissors]
  RULES = {rock: :scissors, scissors: :paper, paper: :rock}

  attr_reader :players

    def initialize(player_1, player_2)
      @players = [player_1, player_2]
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
      player_2.weapon_selector if single_player
      if player_2.weapon == RULES[player_1.weapon]
        :win
      elsif player_1.weapon == RULES[player_2.weapon]
        :lose
     else
        :draw
      end
    end

    def single_player
      player_2.type == :computer
    end
  end