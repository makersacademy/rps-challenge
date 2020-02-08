# require 'game'

class Computer 

  attr_reader :name, :weapon

  def initialize
    @name = "Computer"
  end

  def choose
    @weapon = [:rock, :paper, :scissors].sample
  end

end
