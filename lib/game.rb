class Game
  WEAPONS = [:rock, :paper, :scissors]
  RULES = {rock: :scissors, scissors: :paper, paper: :rock}

  attr_reader :players, :type

    def initialize(player_1, player_2)
      @players = [player_1, player_2]
      @type = :single
    end
  
    def player_1
      @players.first
    end
  
    def player_2
      @players.last
    end

    def type=(type)
      type.downcase.to_sym
    end

  
    def result
      player_2.weapon_selector
      if player_2.weapon == RULES[player_1.weapon]
        :win
      elsif player_1.weapon == RULES[player_2.weapon]
        :lose
     else
        p player_1.weapon == player_2.weapon
        :draw
      end
    end
  end