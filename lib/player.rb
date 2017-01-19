require_relative 'game'

class Player

attr_reader :name, :choice

  def initialize(name)
    @name = name
    @choice = nil
  end

attr_writer :choice

end
