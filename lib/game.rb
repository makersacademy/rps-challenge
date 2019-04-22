class Game

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

  attr_reader :player, :game_choice, :winner

  def initialize(player)
    @player = player
    @game_choice = random_game_choice
  end

  def decide_winner
    @winner = OUTCOMES[player.choice][game_choice]
  end

  private

  OPTIONS = ['Rock', 'Paper', 'Scissors']
  OUTCOMES = {
    'Rock' => { 'Scissors' => 'Winner', 'Paper' => 'Loser', 'Rock' => 'Draw' },
    'Scissors' => { 'Paper' => 'Winner', 'Rock' => 'Loser', 'Scissors' => 'Draw'  },
    'Paper' => { 'Rock' => 'Winner', 'Scissors' => 'Loser', 'Paper' => 'Draw'  }
    }

  def random_game_choice
    OPTIONS.sample
  end

end
