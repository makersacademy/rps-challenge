class Player
  attr_reader :name

  def initialize(name = '')
    @name = name == '' ? 'Guest' : name
  end
end
