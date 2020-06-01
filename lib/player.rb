# frozen_string_literal: true

class Player
  attr_reader :name
  attr_accessor :move
  def initialize(name)
    @name = name
    @move = nil
  end
end
