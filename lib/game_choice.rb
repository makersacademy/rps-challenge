class GameChoice
  attr_reader :player_rps, :computer_rps

  @name = nil

  def self.instance
    @name
  end

  def self.instance=(value)
    @name = value
  end

  def initialize(player_rps, computer_rps = RockPaperScissors.new)
    @player_rps = player_rps
    @computer_rps = computer_rps.rock_paper_scissors
    self.class.instance = self
  end
end
