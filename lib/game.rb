
class Game

  attr_reader :player, :computer, :result

  def initialize(player, computer)
    @player = player
    @computer = computer
    @result = nil
  end

  def choice
    if @player.choice == 'rock' && @computer.choice == 'scissors'
      @result = true
    elsif @player.choice == 'rock' && @computer.choice == 'rock'
      @result = nil
    elsif @player.choice == 'scissors' && @computer.choice == 'paper'
      @result = true
    elsif @player.choice == 'scissors' && @computer.choice == 'scissors'
      @result = nil
    elsif @player.choice == 'paper' && @computer.choice == 'rock'
      @result = true
    elsif @player.choice == 'paper' && @computer.choice == 'paper'
      @result = nil
    else
      @result = false
    end
  end

end
