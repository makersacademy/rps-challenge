
class Game

  attr_reader :player, :computer, :results

  def initialize(player, computer)
    @player = player
    @computer = computer
    @resut = nil
  end

  def result
    if @player.choice == 'rock' && @computer.choice == 'scissors'
      @result = true
    else
      @result = false
    end
  end

end
