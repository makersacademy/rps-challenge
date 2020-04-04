require_relative 'choice'

class Player
  attr_reader :name, :choice

  def initialize(name, chooser = Choice)
    @name = name
    @chooser = chooser
    @choice = nil
  end

  def choose(choice)
    @choice = @chooser.new(choice)
  end

end
