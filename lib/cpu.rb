require 'player'

class CPU < Player
  def initialize
  end

  def make_hand
    'rock' || 'paper' || 'scissors'
  end

  def ready?
    true
  end
end
