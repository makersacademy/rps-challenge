class Player

attr_reader :name, :wins
  DEFAULT_WINS = 0

  def initialize(name, wins = DEFAULT_WINS)
      @name = name
      @wins = wins
    end

end
