require_relative 'game'

class Computer

  attr_reader :choice, :name

  def initialize
    @name = names.sample
  end

  def choose_at_random
    @choice = Game::MOVES.sample
    @choice
  end

  private

  attr_reader :names

  def names
    names = ["Sabrina","Tanya","Javi","Teila","Des","Caitlyn","Alex","Chris"]
  end

end
