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
  
    def result
      player_2.weapon_selector
      if player_2.weapon == RULES[player_1.weapon]
        puts player_2.weapon
        p :win
      elsif player_1.weapon == RULES[player_2.weapon]
        puts player_2.weapon
        p :lose
     else
        p player_1.weapon == player_2.weapon
        puts player_2.weapon
        p :draw
      end
    end
  end