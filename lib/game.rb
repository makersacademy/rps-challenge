# frozen_literal_string: true

class Game
  def random_gesture
    %w[rock paper scissors][random_choice]
  end

  def result(gesture_one, gesture_two)
    gestures_to_players(gesture_one, gesture_two)
    p_one = player_one[:gesture]
    p_two = player_two[:gesture]

    return 'Its a draw!' if p_one == p_two

    player_one_win?(p_one, p_two) ? player_one[:player] : player_two[:player]
  end

  private

  attr_reader :player_one, :player_two

  def random_choice
    rand(0..2)
  end

  def gestures_to_players(gesture_one, gesture_two)
    @player_one = { player: 'player_one', gesture: gesture_one }
    @player_two = { player: 'player_two', gesture: gesture_two }
  end

  def player_one_win?(p_one, p_two)
    return true if p_one == 'rock' && p_two == 'scissors' ||
                   p_one == 'paper' && p_two == 'rock' ||
                   p_one == 'scissors' && p_two == 'paper'
    false
  end
end
