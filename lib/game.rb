class Game

  attr_accessor :winner

  def compare(player, computer)
    @winner="DRAW" if player.choice == computer.choice
    if player.choice == "rock"
      @winner=computer if computer.choice == "paper"
      @winner=player if computer.choice == "scissors"
      @winner=player if computer.choice == "lizard"
      @winner=computer if computer.choice == "spock"
    elsif player.choice == "paper"
      @winner=player if computer.choice == "rock"
      @winner=computer if computer.choice == "scissors"
      @winner=computer if computer.choice == "lizard"
      @winner=player if computer.choice == "spock"
    elsif player.choice == "scissors"
      @winner=player if computer.choice == "paper"
      @winner=computer if computer.choice == "rock"
      @winner=player if computer.choice == "lizard"
      @winner=computer if computer.choice == "spock"
    elsif player.choice == "lizard"
      @winner=player if computer.choice == "paper"
      @winner=computer if computer.choice == "rock"
      @winner=computer if computer.choice == "scissors"
      @winner=player if computer.choice == "spock"
    elsif player.choice == "spock"
      @winner=computer if computer.choice == "paper"
      @winner=player if computer.choice == "rock"
      @winner=computer if computer.choice == "lizard"
      @winner=player if computer.choice == "scissors"
    else
      raise "Could not compare moves"
    end
  end

end