require_relative 'player'

class Game


  attr_reader :options


  def initialize player

    @player = player
    @options = ['Rock', 'Paper','Scissors','Lizard','Spock']

  end


  def challenge player_choice # example player.play('Rock')


    if player_choice == 'Rock' && self.random_choice == 'Rock'
      'Tie'
    elsif player_choice == 'Rock' && self.random_choice == 'Paper'
      'You lost! Paper covers Rock'
    elsif player_choice == 'Rock' && self.random_choice == 'Scissors'
      'You won! Rock crushes Scissors'
    elsif player_choice == 'Rock' && self.random_choice == 'Lizard'
      'You won! Rock crushes Lizard'
    elsif player_choice == 'Rock' && self.random_choice == 'Spock'
      'You lost! Spock vaporizes Rock'


    elsif player_choice == 'Paper' && self.random_choice == 'Rock'
      'You won! Paper covers Rock'
    elsif player_choice == 'Paper' && self.random_choice == 'Paper'
      'Tie'
    elsif player_choice == 'Paper' && self.random_choice == 'Scissors'
      'You lost! Scissors cut Paper'
    elsif player_choice == 'Paper' && self.random_choice == 'Lizard'
       'You lost! Lizard eats Paper'
    elsif player_choice == 'Paper' && self.random_choice =='Spock'
      'You won! Paper disproves Spock'


    elsif player_choice == 'Scissors' && self.random_choice == 'Rock'
      'You lost! Rock crushes Scissors'
    elsif player_choice == 'Scissors' && self.random_choice == 'Paper'
       'You won! Scissors cut Paper'
    elsif player_choice == 'Scissors' && self.random_choice == 'Scissors'
       'Tie'
    elsif player_choice == 'Scissors' && self.random_choice == 'Lizard'
       'You won! Scissors decapitate Lizard'
    elsif player_choice == 'Scissors' && self.random_choice == 'Spock'
       'You lost! Spock smashes Scissors'


    elsif player_choice == 'Lizard' && self.random_choice == 'Rock'
      'You lost! Rock crushes Lizard'
    elsif player_choice == 'Lizard' && self.random_choice == 'Paper'
       'You won! Lizard eats Paper'
    elsif player_choice == 'Lizard' && self.random_choice == 'Scissors'
      'You lost! Scissors decapitate Lizard'
    elsif player_choice == 'Lizard' && self.random_choice == 'Lizard'
      'Tie'
    elsif player_choice == 'Lizard' && self.random_choice == 'Spock'
      'You won! Lizard poisons Spock'


    elsif player_choice == 'Spock' && self.random_choice == 'Rock'
      'You won! Spock vaporizes Rock'
    elsif player_choice == 'Spock' && self.random_choice == 'Paper'
      'You lost! Paper disproves Spock'
    elsif player_choice == 'Spock' && self.random_choice == 'Scissors'
      'You won! Spock smashes Scissors'
    elsif player_choice == 'Spock' && self.random_choice == 'Lizard'
       'You lost! Lizard poisons Spock'
    else player_choice == 'Spock' && self.random_choice =='Spock'
      'Tie'
    end

  end



  def random_choice
    rand = rand (5)
    return 'Rock' if rand == 0
    return 'Paper' if rand == 1
    return 'Scissors' if rand == 2
    return 'Lizard' if rand == 3
    return 'Spock' if rand == 4
  end


end


