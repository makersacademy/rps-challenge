require_relative 'player.rb'

class CPU < Player
  attr_accessor :hand

  def initialize
    @hand = 'Not chosen yet'
  end

  def make_hand
    @hand = 'rock' || 'paper' || 'scissors'
  end

  def ready?
    true
  end
end
