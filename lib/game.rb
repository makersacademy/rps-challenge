class Game
  attr_reader :result

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner
    @result = check
  end

  private

  def check
    if @player.eql?(@computer)
      "Draw"
    elsif @player.eql?("Rock")
      if @computer.eql?("Paper")
        "Lose"
      else
        "Win"
      end
    elsif @player.eql?("Paper")
      if @computer.eql?("Rock")
        "Win"
      else
        "Lose"
      end
    else
      if @computer.eql?("Rock")
        "Lose"
      else
        "Win"
      end
    end
  end
end
