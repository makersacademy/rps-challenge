require_relative 'player'

class Game


  attr_reader :selection

  def initialize player
    @player = player
    @selection = ["rock", "paper", "scissors" ]
  end

  def computer_choice
    ["paper", "scissors", "rock"][rand(3)]
  end

  


  def win_loose_draw player_choice
    # LOGIC

    # Draw
    # player.user_choice == 'rock' && computer_choice == 'rock'
    # player.user_choice == 'scissors' && computer_choice == 'scissors'
    # player.user_choice == 'paper' && computer_choice == 'paper'

    # Win
    # player.user_choice == 'rock' && computer_choice == 'scissors'
    # player.user_choice == 'scissors' && computer_choice == 'paper'
    # player.user_choice == 'paper' && computer_choice == 'rock'

    # Loose
    # player.user_choice == 'rock' && computer_choice == 'paper'
    # player.user_choice == 'scissors' && computer_choice == 'rock'
    # player.user_choice == 'paper' && computer_choice == 'scissors'
  end



end
