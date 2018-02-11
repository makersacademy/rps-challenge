require_relative 'player'

class Bot

  attr_reader :name
  attr_accessor :choice

  def initialize
    @name = "A Harmless Bot"
    @choice = Player::OPTIONS.sample
  end
end
