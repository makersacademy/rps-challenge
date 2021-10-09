class Game

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end
  
  def self.instance
    @game
  end
  
  WEAPONS = [:rock, :paper, :scissors]

  RULES = {
    :rock     => {:rock => :draw, :paper => :lose, :scissors => :win},
    :paper    => {:rock => :win, :paper => :draw, :scissors => :lose},
    :scissors => {:rock => :lose, :paper => :win, :scissors => :draw}
    }
  
  attr_reader :player_1, :player_2
  
    def initialize(player_1, player_2)
      @player_1 = player_1
      @player_2 = player_2
    end

    def result(p1_choice, p2_choice)
      RULES[@player_1.weapon(p1_choice)][p2_choice]
    end

  
  end