# frozen_string_literal: true

# Understands keeping track of player hit points and receiving damage
class Player
  attr_reader :name
  attr_accessor :selection

  def initialize(name)
    @name = name
  end

  def random_selection
    @selection = ['Rock', 'Paper', 'Scissors'].sample
  end
end
