class Game

  attr_reader :result

  def initialize(player, computer)
    @player = player
    @computer = computer
    @result = :win
  end

end
