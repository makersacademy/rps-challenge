class Game

  attr_reader :player, :player_move

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player_choice(player_choice)
    @player_move = player_choice
  end

end
