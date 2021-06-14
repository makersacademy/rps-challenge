class Random_pick
  attr_reader :rps_array
  
  def initialize
    @rps_array = ['rock', 'paper', 'scissors']
  end

  def cpu_turn
    p @rps_array.sample
  end
end
