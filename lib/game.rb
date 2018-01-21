class Game
  attr_reader :go_manager

  def self.new_game(player1, player2, go_manager)
    @game_instance = Game.new(player1, player2, go_manager)
  end

  def self.game_instance
    @game_instance
  end

  def initialize(player1, player2, go_manager)
    @players = [player1, player2]
    @go_manager = go_manager
  end

  def random_go
    go_manager.random_go
  end

  def winner
    go_manager.winner(player1, player2)
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

end
