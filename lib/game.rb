class Game
  attr_reader :player, :player_name,

  def self.instance
    @instance
  end

  def self.create(name)
    @instance = self.new(name)
  end

  def initialize(player_name, player_class = Player)
    @player_class = player_class
    @player_name  = player_name
    @player       = play_maker
  end

  private

  attr_reader :player_class

  def play_maker
    player_class.new(player_name)
  end
end
