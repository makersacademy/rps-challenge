# Understands the computer's choice.
require_relative 'game'

class Computer
  def choice
    [:rock, :paper, :scissors].sample
  end
end
