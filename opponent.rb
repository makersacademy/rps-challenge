class Opponent

  def initialize
    @instrument = ['rock', 'paper', 'scissors']
  end

  def turn
    @instrument.sample
  end
end