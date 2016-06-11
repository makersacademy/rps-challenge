class Game
  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def self.start(player1, player2)
    @game = new(player1, player2)
  end

  def self.instance
    @game ||= new
  end
end
