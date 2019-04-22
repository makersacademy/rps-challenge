class Game

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def winner
    OUTCOMES[player_1.choice] == player_2.choice ? player_1 : player_2
  end

  def draw?
    player_1.choice == player_2.choice
  end

  OUTCOMES = {
    'Rock' => 'Scissors',
    'Scissors' => 'Paper',
    'Paper' => 'Rock'
    }
end
