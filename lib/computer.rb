require_relative "game.rb"

class Computer
  def choice
    Game::Weapons.sample
  end
end
