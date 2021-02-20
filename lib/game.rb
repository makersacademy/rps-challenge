class Game
  attr_reader :player, :player_name, :ai

  class << self
    attr_reader :instance

    def create(player_name)
      @instance = new(player_name)
    end
  end

  def initialize(player_name, player_class = Player, ai_class = Ai)
    @player_class = player_class
    @player_name  = player_name
    @player       = player_factory
    @ai           = ai_class.new
  end

  private

  attr_reader :player_class, :ai_class

  def player_factory
    player_class.new(player_name)
  end
end
