class Game

  attr_reader :player


  def add_player(player)
    # @player_one ? @player_two = player : @player_one = player
    # players << player
    @player = player
  end

  # def players
  #   @players ||= []
  # end

  def winner(player_choice, computer_choice)
    if player_choice == computer_choice
      'Tie'
    elsif (player_choice == 'paper' && computer_choice == 'rock')||
      (player_choice == 'rock' && computer_choice == 'scissors')||
      (player_choice == 'scissors' && computer_choice == 'paper')
      "You win!"
    else
      'Computer wins'
    end
  end
end