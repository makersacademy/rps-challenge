require_relative 'game.rb'

class Player

  attr_reader :name, :score
  attr_accessor :weapon

  def initialize(name)
    @name = name
    @score = 0
    @weapons = [:rock, :paper, :scissors]
    @weapon
  end

  def choose_rock
    self.weapon = weapons[0]
  end

  def choose_paper
    self.weapon = weapons[1]
  end

  def choose_scissors
    self.weapon = weapons[2]
  end

  private

  attr_reader :weapons


end
