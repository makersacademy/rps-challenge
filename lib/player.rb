# frozen_string_literal: true

# Each player session is represented by an instance of the Player class.
class Player

  attr_reader :name

  def initialize(name)
    @name = name.capitalize
  end

end
