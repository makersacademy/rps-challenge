require './lib/game.rb'

class Computer

attr_reader :weapon

  def choose
    @weapon = %w(rock paper scissors).sample
  end


end
