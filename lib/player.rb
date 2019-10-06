class Player
  attr_reader :name, :session
  attr_accessor :move

  def initialize(name, session)
    @name = name
    @session = session
  end

  def ready?
    !!@move
  end

  def reset_move
    @move = nil
  end
end
