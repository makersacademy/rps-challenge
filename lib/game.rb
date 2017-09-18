class Game
  DEFAULT_RULES =
  {
    'rock' => 'scissors',
    'paper' => 'rock',
    'scissors' => 'paper'
  }
  attr_reader :rules, :players
  def initialize(rules = DEFAULT_RULES)
    @rules = rules
    @players = []
  end

  def add_player(player1, player2)
    @players = [player1, player2]
  end

  def result(weapon)
    player2 = @players.last
    weapon.outcome(player2, @rules)
  end

end
