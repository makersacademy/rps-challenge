class Game
  attr_reader :player, :player_name, :player_class
  private     :player_class

  def self.instance
    @instance
  end

  def self.create(name)
    @instance = self.new(name)
  end

  def initialize(player_name, player_class = Player)
    @player_class = player_class
    @player_name  = player_name
    @player       = player_factory
  end

  private

  def player_factory
    player_class.new(player_name)
  end
end
