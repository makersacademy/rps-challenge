class Game
  DEFAULT_ACTIONS = ['paper', 'scissors', 'rock']

  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def random_action
    DEFAULT_ACTIONS.sample
  end

  # can be written cleaner
  def return_result(player1, player2)
    return player1 if player1.action == 'rock' && player2.action == 'scissors'
    return player1 if player1.action == 'scissors' && player2.action == 'paper'
    return player1 if player1.action == 'paper' && player2.action == 'rock'
    return 'tie' if player1.action == player2.action
    player2
  end
end
