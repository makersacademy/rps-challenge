class Player
  attr_reader :name
  attr_accessor :choice
  alias_method :choose, :choice=

  def initialize name
    @name = name
    @choice = nil
    @game = nil
  end

  def join current_game
    current_game.add self
    @game = current_game
  end

  def quit
    @game.remove self
  end
end
