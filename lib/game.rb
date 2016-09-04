

class Game

  attr_accessor :player_choice
  attr_reader :computer

  def initialize(player)
    @player = player
    @player_choice = nil
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def computer_choice
    [:rock, :paper, :scissors].sample
  end

end
