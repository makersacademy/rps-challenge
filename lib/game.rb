class Game

  attr_reader :rps_choice, :rps

  def initialize
    @rps = ['Rock', 'Paper', 'Scissors']
    @rps_choice = randomise_rps
  end

  private
  def randomise_rps
    rps.sample
  end
end
