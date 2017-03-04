
class RPS

  def initialize(player_name)
    @player_name = player_name
  end

  def self.create(player_name)
    @game = RPS.new(player_name)
  end

  def self.instance
    @game
  end

  def display_name(name=@player_name)
    name
  end
end
