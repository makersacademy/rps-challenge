require_relative 'player'

class Game

attr_reader :player, :computer_choice

  def initialize player
    @player = player
    @computer_choice = ''
  end

  def random_choice
    player.options.shuffle.pop
  end

  def result
    player_choice = player.choice
    @computer_choice = random_choice

      if player_choice == computer_choice
        tie
      else
        send(player_choice.downcase,computer_choice) 
      end
  end

  private

  def rock computer_choice
    computer_choice == 'Scissors' ? win : lose 
  end

  def paper computer_choice
    computer_choice == 'Rock' ? win : lose 
  end

  def scissors computer_choice
    computer_choice == 'Paper' ? win : loses 
  end

  def win
    player_choice = player.choice
    "#{player_choice} beats #{computer_choice}. You win!"
  end

  def lose
    player_choice = player.choice
    "#{computer_choice} beats #{player_choice}. You lose!"
  end

  def tie
    "It's a tie!"
  end

end