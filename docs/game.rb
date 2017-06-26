class Game

attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def calculate_result(player_1, player_2)
    if @player_1.move == @player_2.move
      'draw'
    elsif @player_1.move == 'rock' && @player_2.move == 'scissors'
      'win'
    elsif @player_1.move == 'paper' && @player_2.move == 'rock'
      'win'
    elsif @player_1.move == 'scissors' && @player_2.move == 'paper'
      'win'
    else
      'lose'
    end
  end

  def result_message
    "Result: you #{calculate_result(player_1, player_2)}!"
  end
end
