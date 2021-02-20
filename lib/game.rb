class Game
  attr_reader :player, :player_name

  class << self
    attr_reader :instance

    def create(player_name)
      @instance = new(player_name)
    end
  end

  def initialize(player_name, player_class = Player)
    @player_class = player_class
    @player_name  = player_name
    @player       = player_factory
  end

  private

  attr_reader :player_class

  def player_factory(name = player_name)
    player_class.new(name)
  end
end
