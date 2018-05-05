class Ai

  attr_reader :decision, :rock_hash

  def initialize
    @decision = decision
    @rock_hash = {1 => "rock", 2 => "paper", 3 => "scissors"}
  end

  def random_number
    rand(3) + 1
  end

  def play_turn
    @decision = rock_hash[random_number]
  end
end
