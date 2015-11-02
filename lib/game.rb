class Game

  RULES = {'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper'}

  attr_reader :player

  def initialize(name)
    @player = name
  end

  def computer_move
    %w(rock paper scissors).sample
  end

  def winner(computer_move, player_move)
    return 'It\'s a draw!' if computer_move == player_move
    return 'You won!' if RULES[player_move] == computer_move
    'Computer won!'
  end

end
