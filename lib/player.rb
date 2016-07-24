require_relative 'utilities_module'

class Player
  include Utilities

  def initialize(name)
    @name = name
  end

  def name
    titleize(@name)
  end

end
