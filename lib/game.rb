class Game

  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  attr_reader :player_1, :player_2, :winner

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def decide_winner
    @winner = OUTCOMES[player_1.choice][player_2.choice]
  end

  OUTCOMES = {
    'Rock' => {
      'Scissors' => 'Winner', 'Paper' => 'Loser', 'Rock' => 'Draw'
      },
    'Scissors' => {
      'Paper' => 'Winner', 'Rock' => 'Loser', 'Scissors' => 'Draw'
      },
    'Paper' => {
      'Rock' => 'Winner', 'Scissors' => 'Loser', 'Paper' => 'Draw'
      }
    }
end
