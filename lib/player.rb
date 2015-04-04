class Player
  attr_accessor :choice
  alias_method :choose, :choice=
  attr_reader :name

  def initialize(name)
    @name = name
  end
end