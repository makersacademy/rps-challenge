class Game
  WEAPONS = [:rock, :paper, :scissors]
  RULES = [{rock: :scissors,
            scissors: :paper,
            paper: :rock}]

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
      # returns a symbol for selecting correct erb
      # based on the players weapons
    end
  end