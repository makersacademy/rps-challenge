require 'player'

class CPU < Player
  def initialize
  end

  def make_hand
    'rock' || 'paper' || 'scissors'
  end
end
