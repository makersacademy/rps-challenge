class GameEngine
  attr_accessor :players

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
    RULES[@players.first.weapon] == @players.last.weapon ? :win : :lose
  end

  def draw?
    @players.first.weapon == @players.last.weapon ? :draw : beats?
  end

  def reset
    @players = []
  end

  private_class_method :new

end
