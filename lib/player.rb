# frozen_string_literal: true

# Understands keeping track of player hit points and receiving damage
class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
