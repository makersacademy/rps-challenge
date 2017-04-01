
class Player
  DEFAULT_NAMES = %w(Dante Rocco  Giana  Kaira  Verena  Aldis)

  attr_reader :name

  def initialize(name=DEFAULT_NAMES.sample)
    @name = name
  end


end
