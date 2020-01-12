# require './player'

class Game

  WEAPONS = [:rock, :paper, :scissors]

  attr_reader :player_1, :computer

  def initialize(player_1, computer)
    @player_1 = player_1
    @computer= computer
  end
  
  def outcome
    @player_1.weapon.beats(computer.weapon)
  end

  def who_won
    outcome
    if :Winner
      winner
    elsif :Loser
      loser
    else :Tie
      tie
    end
  end

  def winner
    "#{@player_1.name} wins!"
  end

  def loser
    "The computer won and #{@player_1.name} lost."
  end

  def tie
    "It's a tie!"
  end

end
