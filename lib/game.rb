class Game

  def self.win?(player, computer)
    player = player.to_s

    computer = computer.to_s
    if player == 'rock' && computer == 'scissors'
      true
    elsif player == 'scissors' && computer == 'paper'
      true
    elsif player == 'paper' && computer == 'rock'
      true
    elsif player == computer
      "draw"
    else
      false
    end
  end

    def self.draw?(player, computer)
      player = player.to_s
      computer = computer.to_s
      if player == computer
        true
      else
        false
      end
    end
end