require_relative 'player'

class Game


  attr_reader :options


  def initialize player

    @player = player
    @options = ['rock', 'paper','scissors','spock','lizard']

  end


  def challenge
    self.random_choice
  end




  private

  def random_choice
    rand = rand (6)
    return 'Rock' if rand == 1
    return 'Paper' if rand == 2
    return 'Scissors' if rand == 3
    return 'Spock' if rand == 4
    else'Lizard'
  end


end


