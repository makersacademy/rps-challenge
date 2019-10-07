class Player
  DEFAULT_WINS = 0
  attr_reader :name, :wins

  def initialize(name, wins = DEFAULT_WINS)
    @name = name
    @wins = wins
  end

end
