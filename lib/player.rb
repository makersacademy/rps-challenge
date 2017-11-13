class Player
  attr_reader :playername, :sign

  def initialize(playername)
    @playername = playername
    @sign = nil
  end

  def rock
    @sign = "rock"
  end

  def scissors
    @sign = "scissors"
  end

  def paper
    @sign = "paper"
  end
end
