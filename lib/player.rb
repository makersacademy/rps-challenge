class Player
  attr_reader :name
  attr_accessor :selected_option

  def initialize(name)
    @name = name
  end
end
