class NewGame
  attr_reader :player_choice, :opponent_choice

  def initialize(player_choice = 'rock')
    @player_choice = player_choice
    @opponent_choice = opponent_choice?
  end

  def opponent_choice?
    ['rock', 'paper', 'scissors'].sample
  end

  def winner?
    if @player_choice == 'rock' && @opponent_choice == 'scissors'
      'You won'
    elsif @player_choice == 'scissors' && @opponent_choice == 'paper'
      'You won'
    elsif @player_choice == 'paper' && @opponent_choice == 'rock'
      'You won'
    elsif @player_choice == @opponent_choice
      'You drew with your opponent'
    else
      'You lost'
    end
  end
end
