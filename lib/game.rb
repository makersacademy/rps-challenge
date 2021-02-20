class Game
  attr_reader :player, :player_name

  class << self
    attr_reader :instance

    def create(name)
      @instance = new(name)
    end
  end

  def initialize(player_name, player_class = Player)
    @player_class = player_class
    @player_name  = player_name
    @player       = player_factory
  end

  private

  attr_reader :player_class

  def player_factory
    player_class.new(player_name)
  end
end
