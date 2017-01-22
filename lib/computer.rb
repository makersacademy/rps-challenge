require_relative 'game'

class Computer
    
    def choice
        Game::CHOICES.sample
    end
end