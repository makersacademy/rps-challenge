class Game

  def self.instance
    @game
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  attr_reader :player_1

  attr_accessor :choices

  def initialize(player_1)
    @player_1 = player_1
    @choices = []
  end

  def player_1_choice
    @choices[0].downcase
  end

  def player_2_choice
    @choices[1]
  end

end
