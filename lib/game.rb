require_relative 'player'

class Game
  CHOICES = ['rock', 'paper', 'scissors'].freeze
  OUTCOMES = { 
    'rock' => { 'rock' => 'draw', 'paper' => 'lose', 'scissors' => 'win' },
    'paper' => { 'rock' => 'win', 'paper' => 'draw', 'scissors' => 'lose' },
    'scissors' => { 'rock' => 'lose', 'paper' => 'win', 'scissors' => 'draw' }
  }.freeze

  def initialize(player)
    @player = player
  end
  
  def computer_choice
    @computer_choice = CHOICES.sample
  end

  def win?
    result == 'win'
  end

  def draw?
    result == 'draw'
  end

  def lose?
    result == 'lose'
  end

  def result
    return if @computer_choice.nil?
    OUTCOMES[@player.choice][@computer_choice]
  end
end
