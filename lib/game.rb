class Game

  attr_reader :player_1, :player_2, :player_2_choice

  def initialize(player_1, player_2=Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def winner
    decide_winner
    @winner
  end

private

  def decide_winner
    game_winning_logic
    game_draw
  end

  def player_1_wins
    @winner = @player_1
  end

  def player_2_wins
    @winner = @player_2
  end

  def game_draw
    @winner = 'Draw!' if @player_1.weapon == @player_2.weapon
  end

  def game_winning_logic
    winning_moves[@player_1.weapon] == @player_2.weapon ? player_1_wins : player_2_wins
  end

  def winning_moves
    {
    'rock' => 'scissors',
    'scissors' => 'paper',
    'paper' => 'rock'
    }
  end

end
