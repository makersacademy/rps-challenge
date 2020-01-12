# require './player'

class Game

  WEAPONS = [:rock, :paper, :scissors]

  def who_won(player, computer_weapon)
    result = player.weapon.beats(computer_weapon)
    if result == :Winner
      winner(player.name)
    elsif result == :Loser
      loser(player.name)
    else 
      tie
    end
  end

  def winner(name)
    "#{name} wins!"
  end

  def loser(name)
    "The computer won and #{name} lost."
  end

  def tie
    "It's a tie!"
  end

end
