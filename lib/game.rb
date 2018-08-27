class Game

attr_reader :player

  def initialize(player)
    @player = player
    # needed?
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def ai_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
