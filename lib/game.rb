class Game
  attr_accessor :player_1, :player_2

  @@instance = Game.new

  def self.instance
    @@instance
  end

  private_class_method :new
end
