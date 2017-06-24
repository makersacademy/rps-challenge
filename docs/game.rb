class Game

attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def calculate_result(player_1, player_2)
    if @player_1.move == 'rock'
      if @player_2.move == 'rock'
        'It\'s a draw!'
      elsif @player_2.move == 'paper'
        'You lose.'
      else
        'You win!'
      end
    elsif @player_1.move == 'paper'
      if @player_2.move == 'rock'
        'You win!'
      elsif @player_2.move == 'paper'
        'It\'s a draw!'
      else
        'You lose.'
      end
    elsif @player_1.move == 'scissors'
      if @player_2.move == 'rock'
        'You lose.'
      elsif @player_2.move == 'paper'
        'You win!'
      else
        'It\'s a draw!'
      end
    end
  end
end
