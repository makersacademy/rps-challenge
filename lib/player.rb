class Player

  def initialize(name)
    @name = name
  end

  def choose(rps)
    fail 'You must play with rock, paper or scissors!' unless ['rock', 'paper', 'scissors'].include?(rps)
    rps
  end

end