# this class is the user, taking a name from the (and future?) users.
class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
