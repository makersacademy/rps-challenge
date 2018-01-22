class Game
  attr_reader :rules

  def self.new_game(player1, player2, rules)
    @game_instance = Game.new(player1, player2, rules)
  end

  def self.game_instance
    @game_instance
  end

  def initialize(player1, player2, rules)
    @players = [player1, player2]
    @rules = rules
  end

  def random_go
    rules.random_go
  end

  def winner
    rules.winner(player1, player2)
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

end
