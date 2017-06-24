class Game

attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def calculate_result(player_1, player_2)
    if @player_1.move == @player_2.move
      'It\'s a draw!'
    elsif @player_1.move == 'rock' && @player_2.move == 'paper'
      'You lose.'
    elsif @player_1.move == 'rock' && @player_2.move == 'scissors'
      'You win!'
    elsif @player_1.move == 'paper' && @player_2.move == 'rock'
      'You win!'
    elsif @player_1.move == 'paper' && @player_2.move == 'scissors'
      'You lose.'
    elsif @player_1.move == 'scissors' && @player_2.move == 'rock'
      'You lose.'
    else
      'You win!'
    end
  end
end
