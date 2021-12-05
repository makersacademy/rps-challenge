require_relative 'game'

class Computer
  def initialize
    @choice = Game::MATCHUPS.keys.sample
  end
  
  def choice
    @choice
  end
end
