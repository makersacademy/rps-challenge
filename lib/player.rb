class Player
  attr_reader :username
  attr_accessor :move
  def initialize(username)
    @username = username
  end
end
