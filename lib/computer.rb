require_relative 'player'

class Computer < Player

  def initialize
    @name = "Imaginary friend"
  end

  def select_random(attacks)
    select_attack attacks.sample
  end
end
