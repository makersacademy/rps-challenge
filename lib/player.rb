class Player

  def initialize(player_name)
    @player_name = player_name
  end

  def self.create(player_name)
    @player = Player.new(player_name)
  end

  def self.instance
    @player
  end

  def name(name=@player_name)
    name
  end
end
