class Game
  attr_reader :player, :computer, :result

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def result
    if @computer == @player.weapon
      'It is a draw!'
    elsif @computer == 'ROCK' && @player.weapon == 'SCISSORS'
      'Computer won!'
    elsif @computer == 'PAPER' && @player.weapon == 'ROCK'
      'Computer won!'
    elsif @computer == 'SCISSORS' && @player.weapon == 'PAPER'
      'Computer won!'
    else
      'You win!'
    end
  end
end
