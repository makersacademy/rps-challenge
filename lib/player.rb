# frozen_string_literal: true

# to hold the name and weapon choice of each player
class Player
  attr_reader :name, :weapon
  WEAPONS = %i[rock paper scissors lizard spock].freeze

  def initialize(name)
    @name = name
  end

  def choice(weapon = WEAPONS.sample)
    @weapon = weapon
  end
end
