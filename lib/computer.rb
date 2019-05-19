class Computer
  attr_reader :result

  def initialize
    @result = nil
    
    @pairs = { 'rock' => 'scissors',
               'paper' => 'rock',
               'scissors' => 'paper' }
  end

  def pick
    @result = ['rock', 'paper', 'scissors'].sample
  end

  def validate(player_pick)
    if @pairs[player_pick] == result
      'player'
    elsif @pairs[result] == player_pick
      'computer'
    else
      'draw'
    end
  end
end
