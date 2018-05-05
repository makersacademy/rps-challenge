class Rps
  attr_reader :player

  def initialize(player_name, computer = 'computer')
    @player = player_name
    @computer = computer
  end
end
