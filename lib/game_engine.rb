class GameEngine
  attr_reader :players

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize
    @players = []
  end

  @@instance = GameEngine.new

  def self.create_game
    @@instance
  end

  def add_player(player)
    raise 'No more players can be added' if @players.length == 2
    @players << player
  end

  def beats?
    RULES[@players[0].weapon] == @players[1].weapon
  end

  private_class_method :new

end