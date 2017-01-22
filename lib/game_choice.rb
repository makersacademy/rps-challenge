class GameChoice
  attr_reader :player_rps, :computer_rps
  
  def initialize(player_rps, computer_rps = RockPaperScissors.new)
    @player_rps = player_rps
    @computer_rps = computer_rps
  end
end
