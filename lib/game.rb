class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    if player.weapon == computer.weapon
      'tie'
    elsif player.weapon == 'Rock' && computer.weapon == 'Paper'
      'Computer wins'
    elsif player.weapon == 'Scissors' && computer.weapon == 'Paper'
      'Player wins'
    end
  end

end
