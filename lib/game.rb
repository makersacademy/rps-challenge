require_relative './random'

TO_WIN = { 'paper' => 'rock', 'rock' => 'scissors',
  'scissors' => 'paper' }

TO_DRAW = { 'rock' => 'rock', 'paper' => 'paper',
  'scissors' => 'scissors' }

class Game

  attr_reader :random

  def initialize(weapon, random = Random.new)
    @weapon = weapon
    @random = random.generate
  end

  def won?
    TO_WIN[@weapon] == @random
  end

  def draw?
    TO_DRAW[@weapon] == @random
  end

end
