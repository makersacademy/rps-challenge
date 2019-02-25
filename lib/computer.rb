require_relative 'game'

class Computer  
  def initialize
    
  end

  def self.choice
    Game::CHOICES.sample
  end
end
