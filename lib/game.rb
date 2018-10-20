class Game

  OPTIONS = [:rock, :paper, :scissors]
  WINS = [:rock, :scissors], [:paper, :rock], [:scissors, :paper]

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def result(choice_1, choice_2)
    if WINS.include?([choice_1, choice_2])
      :wins
    elsif choice_1 == choice_2
      :draws
    else
      :loses
    end
  end

end
