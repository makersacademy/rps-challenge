# frozen_string_literal: true

class Player
  attr_reader :name, :choice

  def initialize(name = 'Computer')
    @name = name
  end

  def receive_choice(value)
    @choice = value
  end
end
