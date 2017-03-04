class Game

  attr_reader :player, :option

  def self.create_game(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def initialize(player)
    @player = player
  end

  def select_option(option)
    @option = option
  end

end
