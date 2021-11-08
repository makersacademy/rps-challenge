class Computer
  def initialize
    @rps_array = %w[Rock Paper Scissors]
  end

  def choose_rps
    @rps_array.sample
  end
end
