class Game

  RULES = { rock: :scissors,
    paper: :rock,
    scissors: :paper }

    attr_reader :player, :computer

    def initialize(player, computer)
      @player = player
      @computer = computer
    end

    def self.create(player, computer)
      @game = Game.new(player, computer)
    end

    def self.instance
      @game
    end

    def result
      if player.choice == computer.choice
        "It's a DRAW!"
      elsif computer.choice == RULES[player.choice]
        "You WON!"
      else
        "You LOST!"
      end
    end

  end
