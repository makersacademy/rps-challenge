class Game

  attr_reader :player1, :player2

  def initialize(player1, player2 = nil)
    @player1 = player1
    @player2 = player2 if player2 != nil
  end

  def self.instance
    @game_instance
  end

  def self.start_game(player1, player2 = nil)
    @game_instance ||= Game.new(player1, player2)
  end

end
